#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  ddtl; int /*<<< orphan*/  bo; int /*<<< orphan*/  r2tSN; } ;
typedef  TYPE_4__ r2t_t ;
struct TYPE_15__ {int /*<<< orphan*/  itt; } ;
struct TYPE_17__ {TYPE_1__ bhs; TYPE_4__ r2t; } ;
struct TYPE_16__ {TYPE_3__ ipdu; } ;
struct TYPE_19__ {TYPE_2__ pdu; } ;
typedef  TYPE_5__ pduq_t ;
struct TYPE_20__ {int /*<<< orphan*/  isc; int /*<<< orphan*/  sid; } ;
typedef  TYPE_6__ isc_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(isc_session_t *sp, pduq_t *pq)
{
     pduq_t	*opq;

     FUNC0(8);
     opq = FUNC1(sp, pq->pdu.ipdu.bhs.itt, 1);
     if(opq != NULL) {
	  FUNC2(sp, opq, pq);
     } 
     else {
	  r2t_t		*r2t = &pq->pdu.ipdu.r2t;

	  FUNC5("%d] we lost something itt=%x r2tSN=%d bo=%x ddtl=%x",
		 sp->sid, FUNC3(pq->pdu.ipdu.bhs.itt),
		 FUNC3(r2t->r2tSN), FUNC3(r2t->bo), FUNC3(r2t->ddtl));
     }
     FUNC4(sp->isc, pq);
}