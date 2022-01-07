
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba {int mb_flags; int mb_effective; } ;


 int KASSERT (int,char*) ;
 int MAC_BIBA_FLAG_EFFECTIVE ;
 int biba_dominate_element (int *,int *) ;

__attribute__((used)) static int
biba_dominate_effective(struct mac_biba *a, struct mac_biba *b)
{
 KASSERT((a->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) != 0,
     ("biba_dominate_effective: a not effective"));
 KASSERT((b->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) != 0,
     ("biba_dominate_effective: b not effective"));

 return (biba_dominate_element(&a->mb_effective, &b->mb_effective));
}
