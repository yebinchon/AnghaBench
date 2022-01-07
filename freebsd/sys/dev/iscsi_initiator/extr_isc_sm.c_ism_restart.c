
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cmd; } ;
struct TYPE_6__ {int flags; TYPE_1__ sn; int io_mtx; } ;
typedef TYPE_2__ isc_session_t ;


 int ISC_OWAITING ;
 int iscsi_requeue (TYPE_2__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sdebug (int,char*,...) ;
 int wakeup (int*) ;

void
ism_restart(isc_session_t *sp)
{
     int lastcmd;

     sdebug(2, "restart ...");
     lastcmd = iscsi_requeue(sp);






     mtx_lock(&sp->io_mtx);
     if(sp->flags & ISC_OWAITING) {
   wakeup(&sp->flags);
     }
     mtx_unlock(&sp->io_mtx);

     sdebug(2, "restarted sn.cmd=0x%x lastcmd=0x%x", sp->sn.cmd, lastcmd);
}
