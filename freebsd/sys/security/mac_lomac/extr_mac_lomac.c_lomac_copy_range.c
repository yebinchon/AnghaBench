
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int ml_flags; int ml_rangehigh; int ml_rangelow; } ;


 int KASSERT (int,char*) ;
 int MAC_LOMAC_FLAG_RANGE ;

__attribute__((used)) static void
lomac_copy_range(struct mac_lomac *labelfrom, struct mac_lomac *labelto)
{

 KASSERT((labelfrom->ml_flags & MAC_LOMAC_FLAG_RANGE) != 0,
     ("lomac_copy_range: labelfrom not range"));

 labelto->ml_rangelow = labelfrom->ml_rangelow;
 labelto->ml_rangehigh = labelfrom->ml_rangehigh;
 labelto->ml_flags |= MAC_LOMAC_FLAG_RANGE;
}
