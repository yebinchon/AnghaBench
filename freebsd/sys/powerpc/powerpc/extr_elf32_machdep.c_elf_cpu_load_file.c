
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* linker_file_t ;
struct TYPE_3__ {int id; int size; int address; } ;


 int __syncicache (int ,int ) ;

int
elf_cpu_load_file(linker_file_t lf)
{

 if (lf->id != 1)
  __syncicache(lf->address, lf->size);
 return (0);
}
