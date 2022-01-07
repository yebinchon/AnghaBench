
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct pvo_head {int dummy; } ;
struct TYPE_4__ {struct pvo_head mdpg_pvoh; } ;
struct TYPE_5__ {TYPE_1__ md; } ;



__attribute__((used)) static __inline struct pvo_head *
vm_page_to_pvoh(vm_page_t m)
{

 return (&m->md.mdpg_pvoh);
}
