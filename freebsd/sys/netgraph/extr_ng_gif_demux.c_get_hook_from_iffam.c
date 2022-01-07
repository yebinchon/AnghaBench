
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef size_t iffam_p ;
typedef int hook_p ;
struct TYPE_3__ {int * hooks; } ;


 size_t gFamilies ;

__attribute__((used)) static __inline hook_p *
get_hook_from_iffam(priv_p priv, iffam_p iffam)
{
 return (&priv->hooks[iffam - gFamilies]);
}
