
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
typedef void* jmp_buf ;


 void* kdb_jmpbuf (void*) ;
 int setjmp (void*) ;

int
db_read_bytes(vm_offset_t addr, size_t size, char *data)
{
 jmp_buf jb;
 void *prev_jb;
 char *src;
 int ret;

 prev_jb = kdb_jmpbuf(jb);
 ret = setjmp(jb);
 if (ret == 0) {
  src = (char *)addr;

  if (size == 8)
   *((uint64_t*)data) = *((uint64_t*)src);
  if (size == 4)
   *((int *)data) = *((int *)src);
  else if (size == 2)
   *((short *)data) = *((short *)src);
  else
   while (size-- > 0)
    *data++ = *src++;
 }
 (void)kdb_jmpbuf(prev_jb);
 return (ret);
}
