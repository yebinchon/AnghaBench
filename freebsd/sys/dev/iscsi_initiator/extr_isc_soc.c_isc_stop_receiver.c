
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int * fp; int * soc; int td; int io_mtx; } ;
typedef TYPE_1__ isc_session_t ;


 int ISC_CON_RUN ;
 int ISC_CON_RUNNING ;
 int ISC_LINK_UP ;
 int PDROP ;
 int PRIBIO ;
 int SHUT_RD ;
 int debug_called (int) ;
 int fdrop (int *,int ) ;
 int hz ;
 int msleep (int **,int *,int,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sdebug (int,char*,...) ;
 int soshutdown (int *,int ) ;

void
isc_stop_receiver(isc_session_t *sp)
{
     int n;

     debug_called(8);
     sdebug(3, "sp=%p sp->soc=%p", sp, sp? sp->soc: 0);
     mtx_lock(&sp->io_mtx);
     sp->flags &= ~ISC_LINK_UP;
     msleep(&sp->soc, &sp->io_mtx, PRIBIO|PDROP, "isc_stpc", 5*hz);

     soshutdown(sp->soc, SHUT_RD);

     mtx_lock(&sp->io_mtx);
     sdebug(3, "soshutdown");
     sp->flags &= ~ISC_CON_RUN;
     n = 2;
     while(n-- && (sp->flags & ISC_CON_RUNNING)) {
   sdebug(3, "waiting n=%d... flags=%x", n, sp->flags);
   msleep(&sp->soc, &sp->io_mtx, PRIBIO, "isc_stpc", 5*hz);
     }
     mtx_unlock(&sp->io_mtx);

     if(sp->fp != ((void*)0))
   fdrop(sp->fp, sp->td);
     sp->soc = ((void*)0);
     sp->fp = ((void*)0);

     sdebug(3, "done");
}
