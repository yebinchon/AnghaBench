
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int targetAddress; int targetName; } ;
struct TYPE_7__ {int douio; int oid; int clist; TYPE_2__ opt; int dev; TYPE_1__* isc; int sid; } ;
typedef TYPE_3__ isc_session_t ;
struct TYPE_5__ {int oid; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_NODE (int *,int ,int ,scalar_t__,int,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,void*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int debug_called (int) ;
 scalar_t__ devtoname (int ) ;
 int isc_dump_stats ;
 int sdebug (int,char*,int ,scalar_t__) ;
 int sysctl_ctx_init (int *) ;
 int sysctl_handle_string ;

__attribute__((used)) static void
isc_add_sysctls(isc_session_t *sp)
{
     debug_called(8);
     sdebug(6, "sid=%d %s", sp->sid, devtoname(sp->dev));

     sysctl_ctx_init(&sp->clist);
     sp->oid = SYSCTL_ADD_NODE(&sp->clist,
          SYSCTL_CHILDREN(sp->isc->oid),
          OID_AUTO,
          devtoname(sp->dev) + 5,
          CTLFLAG_RD,
          0,
          "initiator");
     SYSCTL_ADD_PROC(&sp->clist,
       SYSCTL_CHILDREN(sp->oid),
       OID_AUTO,
       "targetname",
       CTLTYPE_STRING | CTLFLAG_RD,
       (void *)&sp->opt.targetName, 0,
       sysctl_handle_string, "A", "target name");

     SYSCTL_ADD_PROC(&sp->clist,
       SYSCTL_CHILDREN(sp->oid),
       OID_AUTO,
       "targeaddress",
       CTLTYPE_STRING | CTLFLAG_RD,
       (void *)&sp->opt.targetAddress, 0,
       sysctl_handle_string, "A", "target address");

     SYSCTL_ADD_PROC(&sp->clist,
       SYSCTL_CHILDREN(sp->oid),
       OID_AUTO,
       "stats",
       CTLTYPE_STRING | CTLFLAG_RD,
       (void *)sp, 0,
       isc_dump_stats, "A", "statistics");

     SYSCTL_ADD_INT(&sp->clist,
       SYSCTL_CHILDREN(sp->oid),
       OID_AUTO,
       "douio",
       CTLFLAG_RW,
       &sp->douio, 0, "enable uio on read");
}
