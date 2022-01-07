
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* linker_file_t ;
typedef scalar_t__ elf_file_t ;
struct TYPE_5__ {int ctors_size; int ctors_addr; } ;


 int elf_cpu_load_file (TYPE_1__*) ;
 int link_elf_invoke_ctors (int ,int ) ;
 int link_elf_protect (scalar_t__) ;
 int link_elf_reloc_local (TYPE_1__*,int) ;
 int relocate_file (scalar_t__) ;

__attribute__((used)) static int
link_elf_link_preload_finish(linker_file_t lf)
{
 elf_file_t ef;
 int error;

 ef = (elf_file_t)lf;
 error = relocate_file(ef);
 if (error)
  return (error);


 error = elf_cpu_load_file(lf);
 if (error)
  return (error);



 error = link_elf_reloc_local(lf, 1);
 if (error != 0)
  return (error);



 link_elf_protect(ef);

 link_elf_invoke_ctors(lf->ctors_addr, lf->ctors_size);
 return (0);
}
