
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int mm_flags; int mm_effective; } ;


 int KASSERT (int,char*) ;
 int MAC_MLS_FLAG_EFFECTIVE ;
 int mls_equal_element (int *,int *) ;

__attribute__((used)) static int
mls_equal_effective(struct mac_mls *a, struct mac_mls *b)
{

 KASSERT((a->mm_flags & MAC_MLS_FLAG_EFFECTIVE) != 0,
     ("mls_equal_effective: a not effective"));
 KASSERT((b->mm_flags & MAC_MLS_FLAG_EFFECTIVE) != 0,
     ("mls_equal_effective: b not effective"));

 return (mls_equal_element(&a->mm_effective, &b->mm_effective));
}
