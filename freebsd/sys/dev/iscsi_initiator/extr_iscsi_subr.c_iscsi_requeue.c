
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_12__ {int CmdSN; } ;
struct TYPE_13__ {TYPE_1__ bhs; } ;
struct TYPE_14__ {TYPE_2__ ipdu; } ;
struct TYPE_16__ {TYPE_3__ pdu; int * ccb; } ;
typedef TYPE_5__ pduq_t ;
struct TYPE_15__ {int cmd; } ;
struct TYPE_17__ {TYPE_4__ sn; int flags; int isc; } ;
typedef TYPE_6__ isc_session_t ;


 int ISC_HOLD ;
 int _scsi_done (TYPE_6__*,int ,int,int *,int *) ;
 int debug_called (int) ;
 TYPE_5__* i_dqueue_hld (TYPE_6__*) ;
 scalar_t__ ntohl (int ) ;
 int pdu_free (int ,TYPE_5__*) ;
 int sdebug (int,char*,scalar_t__,scalar_t__) ;

int
iscsi_requeue(isc_session_t *sp)
{
     pduq_t *pq;
     u_int i, n, last;

     debug_called(8);
     i = last = 0;
     sp->flags |= ISC_HOLD;
     while((pq = i_dqueue_hld(sp)) != ((void*)0)) {
   i++;
   if(pq->ccb != ((void*)0)) {
        _scsi_done(sp, 0, 0x28, pq->ccb, ((void*)0));
        n = ntohl(pq->pdu.ipdu.bhs.CmdSN);
        if(last==0 || (last > n))
      last = n;
        sdebug(2, "last=%x n=%x", last, n);
   }
   pdu_free(sp->isc, pq);
     }
     sp->flags &= ~ISC_HOLD;
     return i? last: sp->sn.cmd;
}
