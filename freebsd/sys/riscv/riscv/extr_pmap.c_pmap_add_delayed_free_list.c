
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct spglist {int dummy; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int ss; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_7__ {int flags; } ;


 int PG_ZERO ;
 int SLIST_INSERT_HEAD (struct spglist*,TYPE_2__*,int ) ;
 TYPE_4__ plinks ;

__attribute__((used)) static __inline void
pmap_add_delayed_free_list(vm_page_t m, struct spglist *free,
    boolean_t set_PG_ZERO)
{

 if (set_PG_ZERO)
  m->flags |= PG_ZERO;
 else
  m->flags &= ~PG_ZERO;
 SLIST_INSERT_HEAD(free, m, plinks.s.ss);
}
