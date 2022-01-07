
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int softbuttons_y; int softbutton2_x; int softbutton3_x; int sysctl_tree; int sysctl_ctx; } ;
struct TYPE_3__ {scalar_t__ topButtonPad; } ;
struct psm_softc {TYPE_2__ syninfo; TYPE_1__ synhw; } ;


 int CTLFLAG_ANYBODY ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYNAPTICS_SYSCTL_SOFTBUTTON2_X ;
 int SYNAPTICS_SYSCTL_SOFTBUTTON3_X ;
 int SYNAPTICS_SYSCTL_SOFTBUTTONS_Y ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct psm_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int synaptics_sysctl ;

__attribute__((used)) static void
synaptics_sysctl_create_softbuttons_tree(struct psm_softc *sc)
{







 sc->syninfo.softbuttons_y = sc->synhw.topButtonPad ? -1700 : 1700;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "softbuttons_y", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_SOFTBUTTONS_Y,
     synaptics_sysctl, "I",
     "Vertical size of softbuttons area");


 sc->syninfo.softbutton2_x = 3100;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "softbutton2_x", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_SOFTBUTTON2_X,
     synaptics_sysctl, "I",
     "Horisontal position of 2-nd softbutton left edge (0-disable)");


 sc->syninfo.softbutton3_x = 3900;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "softbutton3_x", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_SOFTBUTTON3_X,
     synaptics_sysctl, "I",
     "Horisontal position of 3-rd softbutton left edge (0-disable)");
}
