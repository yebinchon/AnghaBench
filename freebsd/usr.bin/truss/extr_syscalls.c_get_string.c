
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_io_desc {char* piod_addr; size_t piod_len; void* piod_offs; int piod_op; } ;
typedef int pid_t ;
typedef int caddr_t ;


 size_t MAXSIZE ;
 uintptr_t PAGE_SIZE ;
 int PIOD_READ_D ;
 int PT_IO ;
 int free (char*) ;
 char* malloc (size_t) ;
 int * memchr (char*,char,size_t) ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static char *
get_string(pid_t pid, uintptr_t addr, int max)
{
 struct ptrace_io_desc iorequest;
 char *buf, *nbuf;
 size_t offset, size, totalsize;

 offset = 0;
 if (max)
  size = max + 1;
 else {

  size = PAGE_SIZE - ((uintptr_t)addr % PAGE_SIZE);
  if (size > MAXSIZE)
   size = MAXSIZE;
 }
 totalsize = size;
 buf = malloc(totalsize);
 if (buf == ((void*)0))
  return (((void*)0));
 for (;;) {
  iorequest.piod_op = PIOD_READ_D;
  iorequest.piod_offs = (void *)(addr + offset);
  iorequest.piod_addr = buf + offset;
  iorequest.piod_len = size;
  if (ptrace(PT_IO, pid, (caddr_t)&iorequest, 0) < 0) {
   free(buf);
   return (((void*)0));
  }
  if (memchr(buf + offset, '\0', size) != ((void*)0))
   return (buf);
  offset += size;
  if (totalsize < MAXSIZE && max == 0) {
   size = MAXSIZE - totalsize;
   if (size > PAGE_SIZE)
    size = PAGE_SIZE;
   nbuf = realloc(buf, totalsize + size);
   if (nbuf == ((void*)0)) {
    buf[totalsize - 1] = '\0';
    return (buf);
   }
   buf = nbuf;
   totalsize += size;
  } else {
   buf[totalsize - 1] = '\0';
   return (buf);
  }
 }
}
