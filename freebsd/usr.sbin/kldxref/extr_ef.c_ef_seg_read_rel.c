
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uintmax_t ;
typedef TYPE_1__* elf_file_t ;
struct TYPE_5__ {size_t ef_relsz; size_t ef_relasz; int ef_efile; int const* ef_rela; int const* ef_rel; int ef_name; scalar_t__ ef_verbose; } ;
typedef int const Elf_Rela ;
typedef int const Elf_Rel ;
typedef scalar_t__ Elf_Off ;


 int EFAULT ;
 int EF_RELOC_REL ;
 int EF_RELOC_RELA ;
 scalar_t__ ef_get_offset (TYPE_1__*,scalar_t__) ;
 int ef_read (TYPE_1__*,scalar_t__,size_t,void*) ;
 int ef_reloc (int ,int const*,int ,int ,scalar_t__,size_t,void*) ;
 int warnx (char*,int ,int ,int ) ;

__attribute__((used)) static int
ef_seg_read_rel(elf_file_t ef, Elf_Off offset, size_t len, void *dest)
{
 Elf_Off ofs;
 const Elf_Rela *a;
 const Elf_Rel *r;
 int error;

 ofs = ef_get_offset(ef, offset);
 if (ofs == 0) {
  if (ef->ef_verbose)
   warnx("ef_seg_read_rel(%s): zero offset (%jx:%ju)",
       ef->ef_name, (uintmax_t)offset, (uintmax_t)ofs);
  return (EFAULT);
 }
 if ((error = ef_read(ef, ofs, len, dest)) != 0)
  return (error);

 for (r = ef->ef_rel; r < &ef->ef_rel[ef->ef_relsz]; r++) {
  error = ef_reloc(ef->ef_efile, r, EF_RELOC_REL, 0, offset, len,
      dest);
  if (error != 0)
   return (error);
 }
 for (a = ef->ef_rela; a < &ef->ef_rela[ef->ef_relasz]; a++) {
  error = ef_reloc(ef->ef_efile, a, EF_RELOC_RELA, 0, offset, len,
      dest);
  if (error != 0)
   return (error);
 }
 return (0);
}
