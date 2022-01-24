#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  bhs; } ;
struct TYPE_14__ {TYPE_1__ ipdu; } ;
struct TYPE_16__ {int len; TYPE_2__ pdu; } ;
typedef  TYPE_4__ pduq_t ;
struct TYPE_15__ {int /*<<< orphan*/  t_recv; int /*<<< orphan*/  nrecv; } ;
struct TYPE_17__ {TYPE_3__ stats; int /*<<< orphan*/  bhs; int /*<<< orphan*/  isc; } ;
typedef  TYPE_5__ isc_session_t ;
typedef  int /*<<< orphan*/  bhs_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_5__*) ; 
 int FUNC6 (TYPE_5__*,TYPE_4__*) ; 

__attribute__((used)) static int
FUNC7(isc_session_t *sp)
{
     pduq_t		*pq;
     int		error;

     FUNC1(8);
     /*
      | first read in the iSCSI header
      */
     error = FUNC5(sp);
     if(error == 0) {
	  /*
	   | now read the rest.
	   */
	  pq = FUNC4(sp->isc, M_NOWAIT); 
	  if(pq == NULL) { // XXX: might cause a deadlock ...
	       FUNC0(2, "out of pdus, wait");
	       pq = FUNC4(sp->isc, M_WAITOK);  // OK to WAIT
	  }
	  pq->pdu.ipdu.bhs = sp->bhs;
	  pq->len = sizeof(bhs_t);	// so far only the header was read
	  error = FUNC6(sp, pq);
	  if(error != 0) {
	       error += 0x800; // XXX: just to see the error.
	       // terminal error
	       // XXX: close connection and exit
	  }
	  else {
	       sp->stats.nrecv++;
	       FUNC2(&sp->stats.t_recv);
	       FUNC3(sp, pq);
	  }
     }
     return error;
}