
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
struct TYPE_4__ {int flags; scalar_t__ poll_count; scalar_t__ poll_state; } ;


 int SCF_AUTO ;
 int SCF_CONNECTED ;
 int nglmi_startup (TYPE_1__*) ;

__attribute__((used)) static void
nglmi_startup_auto(sc_p sc)
{
 sc->flags |= (SCF_AUTO | SCF_CONNECTED);
 sc->poll_state = 0;
 sc->poll_count = 0;
 nglmi_startup(sc);
}
