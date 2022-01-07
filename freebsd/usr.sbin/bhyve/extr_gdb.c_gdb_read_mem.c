
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int uint64_t ;


 int EFAULT ;
 int EINVAL ;
 int append_byte (int const) ;
 int assert (int) ;
 int ctx ;
 int cur_vcpu ;
 int errno ;
 int finish_packet () ;
 int getpagesize () ;
 int guest_vaddr2paddr (int ,int,int*) ;
 int* memchr (int const*,char,size_t) ;
 int* paddr_guest2host (int ,int,size_t) ;
 void* parse_integer (int const*,size_t) ;
 int read_mem (int ,int ,int,int*,size_t) ;
 int send_error (int ) ;
 int start_packet () ;

__attribute__((used)) static void
gdb_read_mem(const uint8_t *data, size_t len)
{
 uint64_t gpa, gva, val;
 uint8_t *cp;
 size_t resid, todo, bytes;
 bool started;
 int error;


 data += 1;
 len -= 1;


 cp = memchr(data, ',', len);
 if (cp == ((void*)0) || cp == data) {
  send_error(EINVAL);
  return;
 }
 gva = parse_integer(data, cp - data);
 len -= (cp - data) + 1;
 data += (cp - data) + 1;


 resid = parse_integer(data, len);

 started = 0;
 while (resid > 0) {
  error = guest_vaddr2paddr(cur_vcpu, gva, &gpa);
  if (error == -1) {
   if (started)
    finish_packet();
   else
    send_error(errno);
   return;
  }
  if (error == 0) {
   if (started)
    finish_packet();
   else
    send_error(EFAULT);
   return;
  }


  todo = getpagesize() - gpa % getpagesize();
  if (todo > resid)
   todo = resid;

  cp = paddr_guest2host(ctx, gpa, todo);
  if (cp != ((void*)0)) {




   if (!started) {
    start_packet();
    started = 1;
   }
   while (todo > 0) {
    append_byte(*cp);
    cp++;
    gpa++;
    gva++;
    resid--;
    todo--;
   }
  } else {





   while (todo > 0) {
    if (gpa & 1 || todo == 1)
     bytes = 1;
    else if (gpa & 2 || todo == 2)
     bytes = 2;
    else
     bytes = 4;
    error = read_mem(ctx, cur_vcpu, gpa, &val,
        bytes);
    if (error == 0) {
     if (!started) {
      start_packet();
      started = 1;
     }
     gpa += bytes;
     gva += bytes;
     resid -= bytes;
     todo -= bytes;
     while (bytes > 0) {
      append_byte(val);
      val >>= 8;
      bytes--;
     }
    } else {
     if (started)
      finish_packet();
     else
      send_error(EFAULT);
     return;
    }
   }
  }
  assert(resid == 0 || gpa % getpagesize() == 0);
 }
 if (!started)
  start_packet();
 finish_packet();
}
