
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* linker_file_t ;
struct TYPE_3__ {int * pathname; } ;


 int preload_delete_name (int *) ;

__attribute__((used)) static void
link_elf_unload_preload(linker_file_t file)
{

 if (file->pathname != ((void*)0))
  preload_delete_name(file->pathname);
}
