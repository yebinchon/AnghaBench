
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int ml_flags; int ml_auxsingle; } ;


 int KASSERT (int,char*) ;
 int MAC_LOMAC_FLAG_AUX ;

__attribute__((used)) static void
lomac_copy_auxsingle(struct mac_lomac *labelfrom, struct mac_lomac *labelto)
{

 KASSERT((labelfrom->ml_flags & MAC_LOMAC_FLAG_AUX) != 0,
     ("lomac_copy_auxsingle: labelfrom not auxsingle"));

 labelto->ml_auxsingle = labelfrom->ml_auxsingle;
 labelto->ml_flags |= MAC_LOMAC_FLAG_AUX;
}
