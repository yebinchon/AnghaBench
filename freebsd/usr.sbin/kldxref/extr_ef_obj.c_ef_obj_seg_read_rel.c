
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_4__* elf_file_t ;
struct TYPE_9__ {scalar_t__ size; char* address; int nprogtab; int nrel; int nrela; int ef_efile; TYPE_3__* relatab; TYPE_2__* reltab; TYPE_1__* progtab; int ef_name; scalar_t__ ef_verbose; } ;
struct TYPE_8__ {int sec; size_t nrela; int * rela; } ;
struct TYPE_7__ {int sec; size_t nrel; int * rel; } ;
struct TYPE_6__ {int size; int sec; int * addr; } ;
typedef int Elf_Rela ;
typedef int Elf_Rel ;
typedef scalar_t__ Elf_Off ;


 int EFAULT ;
 int EF_RELOC_REL ;
 int EF_RELOC_RELA ;
 int bcopy (char*,void*,size_t) ;
 int ef_reloc (int ,int *,int ,scalar_t__,scalar_t__,size_t,void*) ;
 int warnx (char*,int ,long,long) ;

__attribute__((used)) static int
ef_obj_seg_read_rel(elf_file_t ef, Elf_Off offset, size_t len, void *dest)
{
 char *memaddr;
 Elf_Rel *r;
 Elf_Rela *a;
 Elf_Off secbase, dataoff;
 int error, i, sec;

 if (offset + len > ef->size) {
  if (ef->ef_verbose)
   warnx("ef_obj_seg_read_rel(%s): bad offset/len (%lx:%ld)",
       ef->ef_name, (long)offset, (long)len);
  return (EFAULT);
 }
 bcopy(ef->address + offset, dest, len);


 memaddr = ef->address + offset;
 sec = -1;
 secbase = dataoff = 0;
 for (i = 0; i < ef->nprogtab; i++) {
  if (ef->progtab[i].addr == ((void*)0))
   continue;
  if (memaddr < (char *)ef->progtab[i].addr || memaddr + len >
       (char *)ef->progtab[i].addr + ef->progtab[i].size)
   continue;
  sec = ef->progtab[i].sec;

  secbase = (char *)ef->progtab[i].addr - ef->address;
  dataoff = memaddr - ef->address;
  break;
 }

 if (sec == -1)
  return (EFAULT);


 for (i = 0; i < ef->nrel; i++) {
  if (ef->reltab[i].sec != sec)
   continue;
  for (r = ef->reltab[i].rel;
       r < &ef->reltab[i].rel[ef->reltab[i].nrel]; r++) {
   error = ef_reloc(ef->ef_efile, r, EF_RELOC_REL, secbase,
       dataoff, len, dest);
   if (error != 0)
    return (error);
  }
 }
 for (i = 0; i < ef->nrela; i++) {
  if (ef->relatab[i].sec != sec)
   continue;
  for (a = ef->relatab[i].rela;
       a < &ef->relatab[i].rela[ef->relatab[i].nrela]; a++) {
   error = ef_reloc(ef->ef_efile, a, EF_RELOC_RELA,
       secbase, dataoff, len, dest);
   if (error != 0)
    return (error);
  }
 }
 return (0);
}
