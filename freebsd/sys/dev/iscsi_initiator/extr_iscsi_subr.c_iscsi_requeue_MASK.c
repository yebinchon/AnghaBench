#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_12__ {int /*<<< orphan*/  CmdSN; } ;
struct TYPE_13__ {TYPE_1__ bhs; } ;
struct TYPE_14__ {TYPE_2__ ipdu; } ;
struct TYPE_16__ {TYPE_3__ pdu; int /*<<< orphan*/ * ccb; } ;
typedef  TYPE_5__ pduq_t ;
struct TYPE_15__ {int cmd; } ;
struct TYPE_17__ {TYPE_4__ sn; int /*<<< orphan*/  flags; int /*<<< orphan*/  isc; } ;
typedef  TYPE_6__ isc_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_HOLD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_5__* FUNC2 (TYPE_6__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__,scalar_t__) ; 

int
FUNC6(isc_session_t *sp)
{
     pduq_t	*pq;
     u_int	i, n, last;

     FUNC1(8);
     i = last = 0;
     sp->flags |= ISC_HOLD;
     while((pq = FUNC2(sp)) != NULL) {
	  i++;
	  if(pq->ccb != NULL) {
	       FUNC0(sp, 0, 0x28, pq->ccb, NULL);
	       n = FUNC3(pq->pdu.ipdu.bhs.CmdSN);
	       if(last==0 || (last > n))
		    last = n;
	       FUNC5(2, "last=%x n=%x", last, n);
	  }
	  FUNC4(sp->isc, pq);
     }
     sp->flags &= ~ISC_HOLD;
     return i? last: sp->sn.cmd;
}