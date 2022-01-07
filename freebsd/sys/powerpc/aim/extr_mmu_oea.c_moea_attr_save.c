
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct TYPE_4__ {int mdpg_attrs; } ;
struct TYPE_5__ {TYPE_1__ md; } ;


 int RA_WLOCKED ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;

__attribute__((used)) static __inline void
moea_attr_save(vm_page_t m, int ptebit)
{

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 m->md.mdpg_attrs |= ptebit;
}
