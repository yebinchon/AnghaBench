
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int ml_flags; int ml_rangelow; int ml_single; int ml_rangehigh; } ;


 int KASSERT (int,char*) ;
 int MAC_LOMAC_FLAG_RANGE ;
 int MAC_LOMAC_FLAG_SINGLE ;
 scalar_t__ lomac_dominate_element (int *,int *) ;

__attribute__((used)) static int
lomac_single_in_range(struct mac_lomac *single, struct mac_lomac *range)
{

 KASSERT((single->ml_flags & MAC_LOMAC_FLAG_SINGLE) != 0,
     ("lomac_single_in_range: a not single"));
 KASSERT((range->ml_flags & MAC_LOMAC_FLAG_RANGE) != 0,
     ("lomac_single_in_range: b not range"));

 return (lomac_dominate_element(&range->ml_rangehigh,
     &single->ml_single) && lomac_dominate_element(&single->ml_single,
     &range->ml_rangelow));
}
