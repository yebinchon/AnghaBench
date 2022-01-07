
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct isc_softc {int dummy; } ;
typedef int pduq_t ;
struct TYPE_5__ {TYPE_1__* si_drv1; } ;
struct TYPE_4__ {TYPE_2__* dev; int nsess; int oid; int clist; int * eh; int unit_sx; int unit; int pdu_zone; int isc_sess; int isc_mtx; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int EEXIST ;
 int * EVENTHANDLER_REGISTER (int ,int ,int ,scalar_t__) ;
 int GID_WHEEL ;
 int MAKEDEV_CHECKNAME ;
 int MTX_DEF ;
 int M_ISCSI ;
 int M_WAITOK ;
 int M_ZERO ;
 int OID_AUTO ;
 scalar_t__ SHUTDOWN_PRI_DEFAULT ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int ,int *,int,char*) ;
 int SYSCTL_ADD_NODE (int *,int ,int ,char*,int ,int ,char*) ;
 int SYSCTL_ADD_STRING (int *,int ,int ,char*,int ,char*,int,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int TAILQ_INIT (int *) ;
 int UID_ROOT ;
 int _net ;
 int debug_called (int) ;
 TYPE_1__* isc ;
 int iscsi_cdevsw ;
 int iscsi_dbg_mtx ;
 char* iscsi_driver_version ;
 int iscsi_shutdown ;
 char* isid ;
 TYPE_2__* make_dev_credf (int ,int *,scalar_t__,int *,int ,int ,int,char*) ;
 TYPE_1__* malloc (int,int ,int) ;
 int max_pdus ;
 scalar_t__ max_sessions ;
 int mtx_init (int *,char*,int *,int ) ;
 int new_unrhdr (int ,scalar_t__,int *) ;
 int printf (char*,char*) ;
 int sc ;
 int shutdown_pre_sync ;
 int sx_init (int *,char*) ;
 int sysctl_ctx_init (int *) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (int ,int ) ;
 int xdebug (char*) ;

__attribute__((used)) static int
iscsi_start(void)
{
     debug_called(8);

     isc = malloc(sizeof(struct isc_softc), M_ISCSI, M_ZERO|M_WAITOK);
     mtx_init(&isc->isc_mtx, "iscsi-isc", ((void*)0), MTX_DEF);

     TAILQ_INIT(&isc->isc_sess);



     isc->pdu_zone = uma_zcreate("pdu", sizeof(pduq_t),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     0, 0);
     uma_zone_set_max(isc->pdu_zone, max_pdus);
     isc->unit = new_unrhdr(0, max_sessions-1, ((void*)0));
     sx_init(&isc->unit_sx, "iscsi sx");
     sysctl_ctx_init(&isc->clist);
     isc->oid = SYSCTL_ADD_NODE(&isc->clist,
          SYSCTL_STATIC_CHILDREN(_net),
          OID_AUTO,
          "iscsi_initiator",
          CTLFLAG_RD,
          0,
          "iSCSI Subsystem");

     SYSCTL_ADD_STRING(&isc->clist,
         SYSCTL_CHILDREN(isc->oid),
         OID_AUTO,
         "driver_version",
         CTLFLAG_RD,
         iscsi_driver_version,
         0,
         "iscsi driver version");

     SYSCTL_ADD_STRING(&isc->clist,
         SYSCTL_CHILDREN(isc->oid),
         OID_AUTO,
         "isid",
         CTLFLAG_RW,
         isid,
         6+1,
         "initiator part of the Session Identifier");

     SYSCTL_ADD_INT(&isc->clist,
      SYSCTL_CHILDREN(isc->oid),
      OID_AUTO,
      "sessions",
      CTLFLAG_RD,
      &isc->nsess,
      sizeof(isc->nsess),
      "number of active session");





     isc->dev = make_dev_credf(MAKEDEV_CHECKNAME, &iscsi_cdevsw, max_sessions,
          ((void*)0), UID_ROOT, GID_WHEEL, 0600, "iscsi");
     if (isc->dev == ((void*)0)) {
   xdebug("iscsi_initiator: make_dev_credf failed");
   return (EEXIST);
     }
     isc->dev->si_drv1 = isc;

     printf("iscsi: version %s\n", iscsi_driver_version);
     return (0);
}
