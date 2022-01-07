
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_offset_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef void* jmp_buf ;
typedef int db_addr_t ;


 void* kdb_jmpbuf (void*) ;
 int mips_dcache_wbinv_range (int ,size_t) ;
 int mips_icache_sync_range (int ,size_t) ;
 int setjmp (void*) ;

int
db_write_bytes(vm_offset_t addr, size_t size, char *data)
{
 int ret;
 jmp_buf jb;
 void *prev_jb;

 prev_jb = kdb_jmpbuf(jb);
 ret = setjmp(jb);

 if (ret == 0) {





  if ((size == 2 || size == 4 || size == 8) &&
      ((addr & (size -1)) == 0) &&
      (((vm_offset_t)data & (size -1)) == 0)) {
   switch (size) {
   case 2:
    *(uint16_t *)addr = *(uint16_t *)data;
    break;
   case 4:
    *(uint32_t *)addr = *(uint32_t *)data;
    break;
   case 8:
    *(uint64_t *)addr = *(uint64_t *)data;
    break;
   }
  } else {
   char *dst;
   size_t len = size;

   dst = (char *)addr;
   while (len-- > 0)
    *dst++ = *data++;
  }

  mips_icache_sync_range((db_addr_t) addr, size);
  mips_dcache_wbinv_range((db_addr_t) addr, size);
 }
 (void)kdb_jmpbuf(prev_jb);
 return (ret);
}
