
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba {int mb_flags; int mb_rangehigh; int mb_rangelow; } ;


 int KASSERT (int,char*) ;
 int MAC_BIBA_FLAG_RANGE ;

__attribute__((used)) static void
biba_copy_range(struct mac_biba *labelfrom, struct mac_biba *labelto)
{

 KASSERT((labelfrom->mb_flags & MAC_BIBA_FLAG_RANGE) != 0,
     ("biba_copy_range: labelfrom not range"));

 labelto->mb_rangelow = labelfrom->mb_rangelow;
 labelto->mb_rangehigh = labelfrom->mb_rangehigh;
 labelto->mb_flags |= MAC_BIBA_FLAG_RANGE;
}
