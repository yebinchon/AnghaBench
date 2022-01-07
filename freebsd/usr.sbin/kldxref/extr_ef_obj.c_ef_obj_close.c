
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* elf_file_t ;
struct TYPE_6__ {scalar_t__ size; scalar_t__ nprogtab; int nrel; int nrela; TYPE_1__* ef_efile; struct TYPE_6__* shstrtab; struct TYPE_6__* ddbstrtab; struct TYPE_6__* ddbsymtab; struct TYPE_6__* relatab; struct TYPE_6__* rela; struct TYPE_6__* reltab; struct TYPE_6__* rel; struct TYPE_6__* progtab; struct TYPE_6__* address; struct TYPE_6__* e_shdr; struct TYPE_6__* ef_name; int ef_fd; } ;
struct TYPE_5__ {int * ef_ef; int * ef_ops; } ;


 int close (int ) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static int
ef_obj_close(elf_file_t ef)
{
 int i;

 close(ef->ef_fd);
 if (ef->ef_name)
  free(ef->ef_name);
 if (ef->e_shdr != ((void*)0))
  free(ef->e_shdr);
 if (ef->size != 0)
  free(ef->address);
 if (ef->nprogtab != 0)
  free(ef->progtab);
 if (ef->nrel != 0) {
  for (i = 0; i < ef->nrel; i++)
   if (ef->reltab[i].rel != ((void*)0))
    free(ef->reltab[i].rel);
  free(ef->reltab);
 }
 if (ef->nrela != 0) {
  for (i = 0; i < ef->nrela; i++)
   if (ef->relatab[i].rela != ((void*)0))
    free(ef->relatab[i].rela);
  free(ef->relatab);
 }
 if (ef->ddbsymtab != ((void*)0))
  free(ef->ddbsymtab);
 if (ef->ddbstrtab != ((void*)0))
  free(ef->ddbstrtab);
 if (ef->shstrtab != ((void*)0))
  free(ef->shstrtab);
 ef->ef_efile->ef_ops = ((void*)0);
 ef->ef_efile->ef_ef = ((void*)0);
 free(ef);

 return (0);
}
