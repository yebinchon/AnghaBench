
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_memattr_t ;
struct TYPE_4__ {int pv_memattr; } ;
struct TYPE_5__ {TYPE_1__ md; } ;



void
pmap_page_set_memattr(vm_page_t m, vm_memattr_t ma)
{

 m->md.pv_memattr = ma;
}
