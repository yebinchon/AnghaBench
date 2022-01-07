
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int mmu_t ;
struct TYPE_4__ {int pv_list; scalar_t__ pv_tracked; } ;
struct TYPE_5__ {TYPE_1__ md; } ;


 int TAILQ_INIT (int *) ;

__attribute__((used)) static void
mmu_booke_page_init(mmu_t mmu, vm_page_t m)
{

 m->md.pv_tracked = 0;
 TAILQ_INIT(&m->md.pv_list);
}
