
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int linker_file_t ;
typedef TYPE_2__* elf_file_t ;
struct TYPE_6__ {scalar_t__ l_name; int * l_ld; } ;
struct TYPE_5__ {scalar_t__ pcpu_base; scalar_t__ vnet_base; void* address; void* symbase; void* strbase; void* ctftab; void* ctfoff; void* typoff; TYPE_1__* object; scalar_t__ preloaded; TYPE_3__ gdb; scalar_t__ vnet_start; scalar_t__ vnet_stop; scalar_t__ pcpu_start; scalar_t__ pcpu_stop; } ;
struct TYPE_4__ {int size; } ;


 int GDB_STATE (int ) ;
 int M_LINKER ;
 int PAGE_SHIFT ;
 int RT_CONSISTENT ;
 int RT_DELETE ;
 int dpcpu_free (void*,scalar_t__) ;
 int elf_cpu_unload_file (int ) ;
 int elf_set_delete (int *,scalar_t__) ;
 int free (void*,int ) ;
 int kernel_map ;
 int link_elf_delete_gdb (TYPE_3__*) ;
 int link_elf_unload_preload (int ) ;
 int set_pcpu_list ;
 int set_vnet_list ;
 int vm_map_remove (int ,scalar_t__,scalar_t__) ;
 int vnet_data_free (void*,scalar_t__) ;

__attribute__((used)) static void
link_elf_unload_file(linker_file_t file)
{
 elf_file_t ef = (elf_file_t) file;

 if (ef->pcpu_base != 0) {
  dpcpu_free((void *)ef->pcpu_base,
      ef->pcpu_stop - ef->pcpu_start);
  elf_set_delete(&set_pcpu_list, ef->pcpu_start);
 }
 elf_cpu_unload_file(file);

 if (ef->preloaded) {
  link_elf_unload_preload(file);
  return;
 }
 free(ef->address, M_LINKER);

 free(ef->symbase, M_LINKER);
 free(ef->strbase, M_LINKER);
 free(ef->ctftab, M_LINKER);
 free(ef->ctfoff, M_LINKER);
 free(ef->typoff, M_LINKER);
}
