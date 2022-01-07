
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* elf_file_t ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ address; int ef_name; scalar_t__ ef_verbose; } ;
typedef scalar_t__ Elf_Off ;


 int EFAULT ;
 int bcopy (scalar_t__,void*,size_t) ;
 int warnx (char*,int ,long,long) ;

__attribute__((used)) static int
ef_obj_seg_read(elf_file_t ef, Elf_Off offset, size_t len, void *dest)
{

 if (offset + len > ef->size) {
  if (ef->ef_verbose)
   warnx("ef_obj_seg_read(%s): bad offset/len (%lx:%ld)",
       ef->ef_name, (long)offset, (long)len);
  return (EFAULT);
 }
 bcopy(ef->address + offset, dest, len);
 return (0);
}
