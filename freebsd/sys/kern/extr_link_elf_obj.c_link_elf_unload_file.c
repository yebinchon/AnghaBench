
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef size_t u_int ;
typedef TYPE_2__* linker_file_t ;
typedef TYPE_3__* elf_file_t ;
struct TYPE_10__ {scalar_t__ size; struct TYPE_10__* rela; struct TYPE_10__* rel; int addr; int * name; } ;
struct TYPE_9__ {size_t nprogtab; size_t nreltab; size_t nrelatab; TYPE_5__* typoff; TYPE_5__* ctfoff; TYPE_5__* ctftab; TYPE_5__* shstrtab; TYPE_5__* ddbstrtab; TYPE_5__* ddbsymtab; TYPE_5__* e_shdr; TYPE_1__* object; scalar_t__ address; TYPE_5__* progtab; TYPE_5__* relatab; TYPE_5__* reltab; scalar_t__ preloaded; } ;
struct TYPE_8__ {int * pathname; } ;
struct TYPE_7__ {int size; } ;


 int DPCPU_SETNAME ;
 int M_LINKER ;
 int VNET_SETNAME ;
 int dpcpu_free (int ,scalar_t__) ;
 int elf_cpu_unload_file (TYPE_2__*) ;
 int free (TYPE_5__*,int ) ;
 int kernel_map ;
 int preload_delete_name (int *) ;
 scalar_t__ ptoa (int ) ;
 int strcmp (int *,int ) ;
 int vm_map_remove (int ,scalar_t__,scalar_t__) ;
 int vnet_data_free (int ,scalar_t__) ;

__attribute__((used)) static void
link_elf_unload_file(linker_file_t file)
{
 elf_file_t ef = (elf_file_t) file;
 u_int i;


 elf_cpu_unload_file(file);

 if (ef->progtab) {
  for (i = 0; i < ef->nprogtab; i++) {
   if (ef->progtab[i].size == 0)
    continue;
   if (ef->progtab[i].name == ((void*)0))
    continue;
   if (!strcmp(ef->progtab[i].name, DPCPU_SETNAME))
    dpcpu_free(ef->progtab[i].addr,
        ef->progtab[i].size);





  }
 }
 if (ef->preloaded) {
  free(ef->reltab, M_LINKER);
  free(ef->relatab, M_LINKER);
  free(ef->progtab, M_LINKER);
  free(ef->ctftab, M_LINKER);
  free(ef->ctfoff, M_LINKER);
  free(ef->typoff, M_LINKER);
  if (file->pathname != ((void*)0))
   preload_delete_name(file->pathname);
  return;
 }

 for (i = 0; i < ef->nreltab; i++)
  free(ef->reltab[i].rel, M_LINKER);
 for (i = 0; i < ef->nrelatab; i++)
  free(ef->relatab[i].rela, M_LINKER);
 free(ef->reltab, M_LINKER);
 free(ef->relatab, M_LINKER);
 free(ef->progtab, M_LINKER);

 if (ef->object != ((void*)0))
  vm_map_remove(kernel_map, (vm_offset_t)ef->address,
      (vm_offset_t)ef->address + ptoa(ef->object->size));
 free(ef->e_shdr, M_LINKER);
 free(ef->ddbsymtab, M_LINKER);
 free(ef->ddbstrtab, M_LINKER);
 free(ef->shstrtab, M_LINKER);
 free(ef->ctftab, M_LINKER);
 free(ef->ctfoff, M_LINKER);
 free(ef->typoff, M_LINKER);
}
