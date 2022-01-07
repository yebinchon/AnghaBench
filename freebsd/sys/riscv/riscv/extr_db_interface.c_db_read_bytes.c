
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef void* jmp_buf ;


 void* kdb_jmpbuf (void*) ;
 int setjmp (void*) ;

int
db_read_bytes(vm_offset_t addr, size_t size, char *data)
{
 jmp_buf jb;
 void *prev_jb;
 const char *src;
 int ret;

 prev_jb = kdb_jmpbuf(jb);
 ret = setjmp(jb);

 if (ret == 0) {
  src = (const char *)addr;
  while (size-- > 0)
   *data++ = *src++;
 }
 (void)kdb_jmpbuf(prev_jb);

 return (ret);
}
