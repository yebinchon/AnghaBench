
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef union ipdu_u {int dummy; } ipdu_u ;
struct thread {int dummy; } ;
struct cdev {TYPE_3__* si_drv2; } ;
struct TYPE_11__ {int ahs_len; int ds_len; int * ds_addr; int * ahs_addr; } ;
struct TYPE_10__ {int len; int * buf; TYPE_2__ pdu; } ;
typedef TYPE_1__ pduq_t ;
typedef TYPE_2__ pdu_t ;
struct TYPE_12__ {int isc; int flags; int * soc; } ;
typedef TYPE_3__ isc_session_t ;
typedef int * caddr_t ;
typedef int ahs_t ;


 int EAGAIN ;
 int ENOTCONN ;
 int M_ISCSIBUF ;
 int M_NOWAIT ;
 int copyin (int *,int *,int) ;
 int debug_called (int) ;
 int i_prepPDU (TYPE_3__*,TYPE_1__*) ;
 int isc_qout (TYPE_3__*,TYPE_1__*) ;
 int * malloc (int,int ,int ) ;
 TYPE_1__* pdu_alloc (int ,int ) ;
 int pdu_free (int ,TYPE_1__*) ;
 int sdebug (int,char*,int,...) ;
 int wakeup (int *) ;

__attribute__((used)) static int
i_send(struct cdev *dev, caddr_t arg, struct thread *td)
{
     isc_session_t *sp = dev->si_drv2;
     caddr_t bp;
     pduq_t *pq;
     pdu_t *pp;
     int n, error;

     debug_called(8);

     if(sp->soc == ((void*)0))
   return ENOTCONN;

     if((pq = pdu_alloc(sp->isc, M_NOWAIT)) == ((void*)0))
   return EAGAIN;
     pp = &pq->pdu;
     pq->pdu = *(pdu_t *)arg;
     if((error = i_prepPDU(sp, pq)) != 0)
   goto out;

     bp = ((void*)0);
     if((pq->len - sizeof(union ipdu_u)) > 0) {
   pq->buf = bp = malloc(pq->len - sizeof(union ipdu_u), M_ISCSIBUF, M_NOWAIT);
   if(pq->buf == ((void*)0)) {
        error = EAGAIN;
        goto out;
   }
     }
     else
   pq->buf = ((void*)0);

     sdebug(2, "len=%d ahs_len=%d ds_len=%d buf=%zu@%p",
     pq->len, pp->ahs_len, pp->ds_len, pq->len - sizeof(union ipdu_u), bp);

     if(pp->ahs_len) {

   n = pp->ahs_len;
   error = copyin(pp->ahs_addr, bp, n);
   if(error != 0) {
        sdebug(3, "copyin ahs: error=%d", error);
        goto out;
   }
   pp->ahs_addr = (ahs_t *)bp;
   bp += n;
     }
     if(pp->ds_len) {
   n = pp->ds_len;
   error = copyin(pp->ds_addr, bp, n);
   if(error != 0) {
        sdebug(3, "copyin ds: error=%d", error);
        goto out;
   }
   pp->ds_addr = bp;
   bp += n;
   while(n & 03) {
        n++;
        *bp++ = 0;
   }
     }

     error = isc_qout(sp, pq);
     if(error == 0)
   wakeup(&sp->flags);
out:
     if(error)
   pdu_free(sp->isc, pq);

     return error;
}
