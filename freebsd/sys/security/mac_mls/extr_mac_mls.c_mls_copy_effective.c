
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int mm_flags; int mm_effective; } ;


 int KASSERT (int,char*) ;
 int MAC_MLS_FLAG_EFFECTIVE ;

__attribute__((used)) static void
mls_copy_effective(struct mac_mls *labelfrom, struct mac_mls *labelto)
{

 KASSERT((labelfrom->mm_flags & MAC_MLS_FLAG_EFFECTIVE) != 0,
     ("mls_copy_effective: labelfrom not effective"));

 labelto->mm_effective = labelfrom->mm_effective;
 labelto->mm_flags |= MAC_MLS_FLAG_EFFECTIVE;
}
