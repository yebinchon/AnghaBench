
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sensitivity; int inertia; int uplateau; int reach; int draghys; int mindrag; int upthresh; int threshold; int jenks; int ztime; int pts; int skipback; int * sysctl_tree; int sysctl_ctx; } ;
struct psm_softc {TYPE_1__ tpinfo; } ;


 int CTLFLAG_ANYBODY ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int * SYSCTL_ADD_NODE (int *,int ,int ,char*,int ,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct psm_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int *) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int TRACKPOINT_SYSCTL_BACKUP_RANGE ;
 int TRACKPOINT_SYSCTL_DRAG_HYSTERESIS ;
 int TRACKPOINT_SYSCTL_JENKS_CURVATURE ;
 int TRACKPOINT_SYSCTL_MINIMUM_DRAG ;
 int TRACKPOINT_SYSCTL_NEGATIVE_INERTIA ;
 int TRACKPOINT_SYSCTL_PRESS_TO_SELECT ;
 int TRACKPOINT_SYSCTL_SENSITIVITY ;
 int TRACKPOINT_SYSCTL_SKIP_BACKUPS ;
 int TRACKPOINT_SYSCTL_THRESHOLD ;
 int TRACKPOINT_SYSCTL_UPPER_PLATEAU ;
 int TRACKPOINT_SYSCTL_UP_THRESHOLD ;
 int TRACKPOINT_SYSCTL_Z_TIME ;
 int _hw_psm ;
 int sysctl_ctx_init (int *) ;
 int trackpoint_sysctl ;

__attribute__((used)) static void
trackpoint_sysctl_create_tree(struct psm_softc *sc)
{

 if (sc->tpinfo.sysctl_tree != ((void*)0))
  return;


 sysctl_ctx_init(&sc->tpinfo.sysctl_ctx);
 sc->tpinfo.sysctl_tree = SYSCTL_ADD_NODE(&sc->tpinfo.sysctl_ctx,
     SYSCTL_STATIC_CHILDREN(_hw_psm), OID_AUTO, "trackpoint", CTLFLAG_RD,
     0, "IBM/Lenovo TrackPoint");


 sc->tpinfo.sensitivity = 0x80;
 SYSCTL_ADD_PROC(&sc->tpinfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->tpinfo.sysctl_tree), OID_AUTO,
     "sensitivity", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, TRACKPOINT_SYSCTL_SENSITIVITY,
     trackpoint_sysctl, "I",
     "Sensitivity");


 sc->tpinfo.inertia = 0x06;
 SYSCTL_ADD_PROC(&sc->tpinfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->tpinfo.sysctl_tree), OID_AUTO,
     "negative_inertia", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, TRACKPOINT_SYSCTL_NEGATIVE_INERTIA,
     trackpoint_sysctl, "I",
     "Negative inertia factor");


 sc->tpinfo.uplateau = 0x61;
 SYSCTL_ADD_PROC(&sc->tpinfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->tpinfo.sysctl_tree), OID_AUTO,
     "upper_plateau", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, TRACKPOINT_SYSCTL_UPPER_PLATEAU,
     trackpoint_sysctl, "I",
     "Transfer function upper plateau speed");


 sc->tpinfo.reach = 0x0a;
 SYSCTL_ADD_PROC(&sc->tpinfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->tpinfo.sysctl_tree), OID_AUTO,
     "backup_range", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, TRACKPOINT_SYSCTL_BACKUP_RANGE,
     trackpoint_sysctl, "I",
     "Backup range");


 sc->tpinfo.draghys = 0xff;
 SYSCTL_ADD_PROC(&sc->tpinfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->tpinfo.sysctl_tree), OID_AUTO,
     "drag_hysteresis", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, TRACKPOINT_SYSCTL_DRAG_HYSTERESIS,
     trackpoint_sysctl, "I",
     "Drag hysteresis");


 sc->tpinfo.mindrag = 0x14;
 SYSCTL_ADD_PROC(&sc->tpinfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->tpinfo.sysctl_tree), OID_AUTO,
     "minimum_drag", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, TRACKPOINT_SYSCTL_MINIMUM_DRAG,
     trackpoint_sysctl, "I",
     "Minimum drag");


 sc->tpinfo.upthresh = 0xff;
 SYSCTL_ADD_PROC(&sc->tpinfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->tpinfo.sysctl_tree), OID_AUTO,
     "up_threshold", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, TRACKPOINT_SYSCTL_UP_THRESHOLD,
     trackpoint_sysctl, "I",
     "Up threshold for release");


 sc->tpinfo.threshold = 0x08;
 SYSCTL_ADD_PROC(&sc->tpinfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->tpinfo.sysctl_tree), OID_AUTO,
     "threshold", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, TRACKPOINT_SYSCTL_THRESHOLD,
     trackpoint_sysctl, "I",
     "Threshold");


 sc->tpinfo.jenks = 0x87;
 SYSCTL_ADD_PROC(&sc->tpinfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->tpinfo.sysctl_tree), OID_AUTO,
     "jenks_curvature", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, TRACKPOINT_SYSCTL_JENKS_CURVATURE,
     trackpoint_sysctl, "I",
     "Jenks curvature");


 sc->tpinfo.ztime = 0x26;
 SYSCTL_ADD_PROC(&sc->tpinfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->tpinfo.sysctl_tree), OID_AUTO,
     "z_time", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, TRACKPOINT_SYSCTL_Z_TIME,
     trackpoint_sysctl, "I",
     "Z time constant");


 sc->tpinfo.pts = 0x00;
 SYSCTL_ADD_PROC(&sc->tpinfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->tpinfo.sysctl_tree), OID_AUTO,
     "press_to_select", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, TRACKPOINT_SYSCTL_PRESS_TO_SELECT,
     trackpoint_sysctl, "I",
     "Press to Select");


 sc->tpinfo.skipback = 0x00;
 SYSCTL_ADD_PROC(&sc->tpinfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->tpinfo.sysctl_tree), OID_AUTO,
     "skip_backups", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, TRACKPOINT_SYSCTL_SKIP_BACKUPS,
     trackpoint_sysctl, "I",
     "Skip backups from drags");
}
