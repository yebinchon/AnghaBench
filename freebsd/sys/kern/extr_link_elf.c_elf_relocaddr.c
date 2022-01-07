
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* linker_file_t ;
typedef scalar_t__ kobj_class_t ;
typedef TYPE_3__* elf_file_t ;
struct TYPE_7__ {scalar_t__ pcpu_start; scalar_t__ pcpu_stop; scalar_t__ pcpu_base; scalar_t__ vnet_start; scalar_t__ vnet_stop; scalar_t__ vnet_base; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {scalar_t__ cls; } ;
typedef scalar_t__ Elf_Addr ;


 int KASSERT (int,char*) ;
 int link_elf_class ;

Elf_Addr
elf_relocaddr(linker_file_t lf, Elf_Addr x)
{
 elf_file_t ef;

 KASSERT(lf->ops->cls == (kobj_class_t)&link_elf_class,
     ("elf_relocaddr: unexpected linker file %p", lf));

 ef = (elf_file_t)lf;
 if (x >= ef->pcpu_start && x < ef->pcpu_stop)
  return ((x - ef->pcpu_start) + ef->pcpu_base);




 return (x);
}
