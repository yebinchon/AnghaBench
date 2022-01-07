
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int mm_flags; int mm_rangelow; int mm_effective; int mm_rangehigh; } ;


 int KASSERT (int,char*) ;
 int MAC_MLS_FLAG_EFFECTIVE ;
 int MAC_MLS_FLAG_RANGE ;
 scalar_t__ mls_dominate_element (int *,int *) ;

__attribute__((used)) static int
mls_effective_in_range(struct mac_mls *effective, struct mac_mls *range)
{

 KASSERT((effective->mm_flags & MAC_MLS_FLAG_EFFECTIVE) != 0,
     ("mls_effective_in_range: a not effective"));
 KASSERT((range->mm_flags & MAC_MLS_FLAG_RANGE) != 0,
     ("mls_effective_in_range: b not range"));

 return (mls_dominate_element(&range->mm_rangehigh,
     &effective->mm_effective) &&
     mls_dominate_element(&effective->mm_effective,
     &range->mm_rangelow));

 return (1);
}
