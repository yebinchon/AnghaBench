
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int * iffam_p ;
typedef scalar_t__ hook_p ;
struct TYPE_3__ {scalar_t__* hooks; } ;


 int NUM_FAMILIES ;
 int * gFamilies ;

__attribute__((used)) static __inline iffam_p
get_iffam_from_hook(priv_p priv, hook_p hook)
{
 int k;

 for (k = 0; k < NUM_FAMILIES; k++)
  if (priv->hooks[k] == hook)
   return (&gFamilies[k]);
 return (((void*)0));
}
