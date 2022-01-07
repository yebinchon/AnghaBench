
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_offset_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef void* jmp_buf ;


 void* kdb_jmpbuf (void*) ;
 int setjmp (void*) ;

int
db_read_bytes(vm_offset_t addr, size_t size, char *data)
{
 jmp_buf jb;
 void *prev_jb;
 int ret;

 prev_jb = kdb_jmpbuf(jb);
 ret = setjmp(jb);
 if (ret == 0) {





  if ((size == 2 || size == 4 || size == 8) &&
      ((addr & (size -1)) == 0) &&
      (((vm_offset_t)data & (size -1)) == 0)) {
   switch (size) {
   case 2:
    *(uint16_t *)data = *(uint16_t *)addr;
    break;
   case 4:
    *(uint32_t *)data = *(uint32_t *)addr;
    break;
   case 8:
    *(uint64_t *)data = *(uint64_t *)addr;
    break;
   }
  } else {
   char *src;

   src = (char *)addr;
   while (size-- > 0)
    *data++ = *src++;
  }
 }

 (void)kdb_jmpbuf(prev_jb);
 return (ret);
}
