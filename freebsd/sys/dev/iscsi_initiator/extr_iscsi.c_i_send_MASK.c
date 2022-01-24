#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  union ipdu_u {int dummy; } ipdu_u ;
struct thread {int dummy; } ;
struct cdev {TYPE_3__* si_drv2; } ;
struct TYPE_11__ {int ahs_len; int ds_len; int /*<<< orphan*/ * ds_addr; int /*<<< orphan*/ * ahs_addr; } ;
struct TYPE_10__ {int len; int /*<<< orphan*/ * buf; TYPE_2__ pdu; } ;
typedef  TYPE_1__ pduq_t ;
typedef  TYPE_2__ pdu_t ;
struct TYPE_12__ {int /*<<< orphan*/  isc; int /*<<< orphan*/  flags; int /*<<< orphan*/ * soc; } ;
typedef  TYPE_3__ isc_session_t ;
typedef  int /*<<< orphan*/ * caddr_t ;
typedef  int /*<<< orphan*/  ahs_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  M_ISCSIBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC3 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct cdev *dev, caddr_t arg, struct thread *td)
{
     isc_session_t	*sp = dev->si_drv2;
     caddr_t		bp;
     pduq_t		*pq;
     pdu_t		*pp;
     int		n, error;

     FUNC1(8);

     if(sp->soc == NULL)
	  return ENOTCONN;

     if((pq = FUNC5(sp->isc, M_NOWAIT)) == NULL)
	  return EAGAIN;
     pp = &pq->pdu;
     pq->pdu = *(pdu_t *)arg;
     if((error = FUNC2(sp, pq)) != 0)
	  goto out;

     bp = NULL;
     if((pq->len - sizeof(union ipdu_u)) > 0) {
	  pq->buf = bp = FUNC4(pq->len - sizeof(union ipdu_u), M_ISCSIBUF, M_NOWAIT);
	  if(pq->buf == NULL) {
	       error = EAGAIN;
	       goto out;
	  }
     }
     else
	  pq->buf = NULL; // just in case?

     FUNC7(2, "len=%d ahs_len=%d ds_len=%d buf=%zu@%p",
	    pq->len, pp->ahs_len, pp->ds_len, pq->len - sizeof(union ipdu_u), bp);

     if(pp->ahs_len) {
	  // XXX: never tested, looks suspicious
	  n = pp->ahs_len;
	  error = FUNC0(pp->ahs_addr, bp, n);
	  if(error != 0) {
	       FUNC7(3, "copyin ahs: error=%d", error);
	       goto out;
	  }
	  pp->ahs_addr = (ahs_t *)bp;
	  bp += n;
     }
     if(pp->ds_len) {
	  n = pp->ds_len;
	  error = FUNC0(pp->ds_addr, bp, n);
	  if(error != 0) {
	       FUNC7(3, "copyin ds: error=%d", error);
	       goto out;
	  }
	  pp->ds_addr = bp;
	  bp += n;
	  while(n & 03) {
	       n++;
	       *bp++ = 0;
	  }
     }

     error = FUNC3(sp, pq);
     if(error == 0)
	  FUNC8(&sp->flags); // XXX: to 'push' proc_out ...
out:
     if(error)
	  FUNC6(sp->isc, pq);

     return error;
}