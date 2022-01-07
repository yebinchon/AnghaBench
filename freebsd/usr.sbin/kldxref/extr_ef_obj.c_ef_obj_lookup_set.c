
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* elf_file_t ;
struct TYPE_5__ {int nprogtab; char* address; TYPE_1__* progtab; } ;
struct TYPE_4__ {int size; scalar_t__ addr; scalar_t__ name; } ;


 int ESRCH ;
 scalar_t__ strcmp (scalar_t__,char const*) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static int
ef_obj_lookup_set(elf_file_t ef, const char *name, long *startp, long *stopp,
    long *countp)
{
 int i;

 for (i = 0; i < ef->nprogtab; i++) {
  if ((strncmp(ef->progtab[i].name, "set_", 4) == 0) &&
      strcmp(ef->progtab[i].name + 4, name) == 0) {
   *startp = (char *)ef->progtab[i].addr - ef->address;
   *stopp = (char *)ef->progtab[i].addr +
       ef->progtab[i].size - ef->address;
   *countp = (*stopp - *startp) / sizeof(void *);
   return (0);
  }
 }
 return (ESRCH);
}
