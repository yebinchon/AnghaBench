
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba {int mb_flags; int mb_rangelow; int mb_effective; int mb_rangehigh; } ;


 int KASSERT (int,char*) ;
 int MAC_BIBA_FLAG_EFFECTIVE ;
 int MAC_BIBA_FLAG_RANGE ;
 scalar_t__ biba_dominate_element (int *,int *) ;

__attribute__((used)) static int
biba_effective_in_range(struct mac_biba *effective, struct mac_biba *range)
{

 KASSERT((effective->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) != 0,
     ("biba_effective_in_range: a not effective"));
 KASSERT((range->mb_flags & MAC_BIBA_FLAG_RANGE) != 0,
     ("biba_effective_in_range: b not range"));

 return (biba_dominate_element(&range->mb_rangehigh,
     &effective->mb_effective) &&
     biba_dominate_element(&effective->mb_effective,
     &range->mb_rangelow));

 return (1);
}
