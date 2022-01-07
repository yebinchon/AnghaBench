
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int link_elf_class ;
 int linker_add_class (int *) ;

__attribute__((used)) static void
link_elf_init(void *arg)
{

 linker_add_class(&link_elf_class);
}
