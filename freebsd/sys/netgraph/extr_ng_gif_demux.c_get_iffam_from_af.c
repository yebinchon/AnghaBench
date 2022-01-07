
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sa_family_t ;
typedef TYPE_1__* iffam_p ;
struct TYPE_4__ {scalar_t__ family; } ;


 int NUM_FAMILIES ;
 TYPE_1__* gFamilies ;

__attribute__((used)) static __inline iffam_p
get_iffam_from_af(sa_family_t family)
{
 iffam_p iffam;
 int k;

 for (k = 0; k < NUM_FAMILIES; k++) {
  iffam = &gFamilies[k];
  if (iffam->family == family)
   return (iffam);
 }
 return (((void*)0));
}
