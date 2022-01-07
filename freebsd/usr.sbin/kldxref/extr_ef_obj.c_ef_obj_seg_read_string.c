
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* elf_file_t ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ address; int ef_name; scalar_t__ ef_verbose; } ;
typedef scalar_t__ Elf_Off ;


 int EFAULT ;
 int memcpy (char*,scalar_t__,size_t) ;
 size_t strnlen (scalar_t__,size_t) ;
 int warnx (char*,int ,long) ;

__attribute__((used)) static int
ef_obj_seg_read_string(elf_file_t ef, Elf_Off offset, size_t len, char *dest)
{

 if (offset >= ef->size) {
  if (ef->ef_verbose)
   warnx("ef_obj_seg_read_string(%s): bad offset (%lx)",
       ef->ef_name, (long)offset);
  return (EFAULT);
 }

 if (ef->size - offset < len)
  len = ef->size - offset;

 if (strnlen(ef->address + offset, len) == len)
  return (EFAULT);

 memcpy(dest, ef->address + offset, len);
 return (0);
}
