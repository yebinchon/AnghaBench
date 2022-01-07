
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cpu_hyperthread; int cpu_present; } ;
struct TYPE_3__ {int (* load ) (int *,int,int *,int *) ;} ;


 int KASSERT (int ,char*) ;
 size_t* cpu_apic_ids ;
 TYPE_2__* cpu_info ;
 int stub1 (int *,int,int *,int *) ;
 int * ucode_data ;
 TYPE_1__* ucode_loader ;

void
ucode_load_ap(int cpu)
{
 if (ucode_data != ((void*)0))
  (void)ucode_loader->load(ucode_data, 0, ((void*)0), ((void*)0));
}
