
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int ml_flags; int ml_single; } ;


 int KASSERT (int,char*) ;
 int MAC_LOMAC_FLAG_SINGLE ;

__attribute__((used)) static void
lomac_copy_single(struct mac_lomac *labelfrom, struct mac_lomac *labelto)
{

 KASSERT((labelfrom->ml_flags & MAC_LOMAC_FLAG_SINGLE) != 0,
     ("lomac_copy_single: labelfrom not single"));

 labelto->ml_single = labelfrom->ml_single;
 labelto->ml_flags |= MAC_LOMAC_FLAG_SINGLE;
}
