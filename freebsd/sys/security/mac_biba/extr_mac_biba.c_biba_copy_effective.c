
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba {int mb_flags; int mb_effective; } ;


 int KASSERT (int,char*) ;
 int MAC_BIBA_FLAG_EFFECTIVE ;

__attribute__((used)) static void
biba_copy_effective(struct mac_biba *labelfrom, struct mac_biba *labelto)
{

 KASSERT((labelfrom->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) != 0,
     ("biba_copy_effective: labelfrom not effective"));

 labelto->mb_effective = labelfrom->mb_effective;
 labelto->mb_flags |= MAC_BIBA_FLAG_EFFECTIVE;
}
