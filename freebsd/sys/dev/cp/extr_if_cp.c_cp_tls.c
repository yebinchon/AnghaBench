
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sppp {int pp_flags; int (* pp_up ) (struct sppp*) ;} ;
struct TYPE_6__ {TYPE_1__* ifp; } ;
typedef TYPE_2__ drv_t ;
struct TYPE_7__ {TYPE_2__* if_softc; } ;
struct TYPE_5__ {int if_flags; } ;


 int CP_DEBUG2 (TYPE_2__*,char*) ;
 int PP_CISCO ;
 int PP_FR ;
 TYPE_3__* SP2IFP (struct sppp*) ;
 int stub1 (struct sppp*) ;

__attribute__((used)) static void cp_tls (struct sppp *sp)
{
 drv_t *d = SP2IFP(sp)->if_softc;

 CP_DEBUG2 (d, ("cp_tls\n"));
 if (!(sp->pp_flags & PP_FR) && !(d->ifp->if_flags & PP_CISCO))
  sp->pp_up (sp);
}
