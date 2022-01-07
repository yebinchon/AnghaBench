
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct spglist {int dummy; } ;
typedef int pmap_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ ref_count; } ;


 int FALSE ;
 int TRUE ;
 int _pmap_unwire_ptp (int ,TYPE_1__*,struct spglist*) ;

__attribute__((used)) static inline boolean_t
pmap_unwire_ptp(pmap_t pmap, vm_page_t m, struct spglist *free)
{

 --m->ref_count;
 if (m->ref_count == 0) {
  _pmap_unwire_ptp(pmap, m, free);
  return (TRUE);
 } else
  return (FALSE);
}
