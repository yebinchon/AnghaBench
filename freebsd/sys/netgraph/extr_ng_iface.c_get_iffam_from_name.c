
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* iffam_p ;
struct TYPE_4__ {int hookname; } ;


 int NUM_FAMILIES ;
 TYPE_1__* gFamilies ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static __inline iffam_p
get_iffam_from_name(const char *name)
{
 iffam_p iffam;
 int k;

 for (k = 0; k < NUM_FAMILIES; k++) {
  iffam = &gFamilies[k];
  if (!strcmp(iffam->hookname, name))
   return (iffam);
 }
 return (((void*)0));
}
