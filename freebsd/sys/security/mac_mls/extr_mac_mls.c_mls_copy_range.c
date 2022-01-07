
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int mm_flags; int mm_rangehigh; int mm_rangelow; } ;


 int KASSERT (int,char*) ;
 int MAC_MLS_FLAG_RANGE ;

__attribute__((used)) static void
mls_copy_range(struct mac_mls *labelfrom, struct mac_mls *labelto)
{

 KASSERT((labelfrom->mm_flags & MAC_MLS_FLAG_RANGE) != 0,
     ("mls_copy_range: labelfrom not range"));

 labelto->mm_rangelow = labelfrom->mm_rangelow;
 labelto->mm_rangehigh = labelfrom->mm_rangehigh;
 labelto->mm_flags |= MAC_MLS_FLAG_RANGE;
}
