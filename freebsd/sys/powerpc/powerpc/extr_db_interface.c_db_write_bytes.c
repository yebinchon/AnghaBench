
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
typedef void* jmp_buf ;


 int kdb_cpu_sync_icache (void*,size_t) ;
 void* kdb_jmpbuf (void*) ;
 int setjmp (void*) ;

int
db_write_bytes(vm_offset_t addr, size_t size, char *data)
{
 jmp_buf jb;
 void *prev_jb;
 char *dst;
 size_t cnt;
 int ret;

 prev_jb = kdb_jmpbuf(jb);
 ret = setjmp(jb);
 if (ret == 0) {
  dst = (char *)addr;
  cnt = size;

  if (size == 8)
   *((uint64_t*)dst) = *((uint64_t*)data);
  if (size == 4)
   *((int*)dst) = *((int*)data);
  else
  if (size == 2)
   *((short*)dst) = *((short*)data);
  else
   while (cnt-- > 0)
    *dst++ = *data++;
  kdb_cpu_sync_icache((void *)addr, size);
 }
 (void)kdb_jmpbuf(prev_jb);
 return (ret);
}
