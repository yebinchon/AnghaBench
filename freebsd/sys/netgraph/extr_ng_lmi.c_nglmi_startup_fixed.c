
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int hook_p ;
struct TYPE_4__ {int flags; int lmi_channel; } ;


 int SCF_CONNECTED ;
 int SCF_FIXED ;
 int nglmi_startup (TYPE_1__*) ;

__attribute__((used)) static void
nglmi_startup_fixed(sc_p sc, hook_p hook)
{
 sc->flags |= (SCF_FIXED | SCF_CONNECTED);
 sc->lmi_channel = hook;
 nglmi_startup(sc);
}
