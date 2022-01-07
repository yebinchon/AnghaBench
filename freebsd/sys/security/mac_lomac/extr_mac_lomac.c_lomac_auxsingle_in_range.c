
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int ml_flags; int ml_rangelow; int ml_auxsingle; int ml_rangehigh; } ;


 int KASSERT (int,char*) ;
 int MAC_LOMAC_FLAG_AUX ;
 int MAC_LOMAC_FLAG_RANGE ;
 scalar_t__ lomac_dominate_element (int *,int *) ;

__attribute__((used)) static int
lomac_auxsingle_in_range(struct mac_lomac *single, struct mac_lomac *range)
{

 KASSERT((single->ml_flags & MAC_LOMAC_FLAG_AUX) != 0,
     ("lomac_single_in_range: a not auxsingle"));
 KASSERT((range->ml_flags & MAC_LOMAC_FLAG_RANGE) != 0,
     ("lomac_single_in_range: b not range"));

 return (lomac_dominate_element(&range->ml_rangehigh,
     &single->ml_auxsingle) &&
     lomac_dominate_element(&single->ml_auxsingle,
     &range->ml_rangelow));
}
