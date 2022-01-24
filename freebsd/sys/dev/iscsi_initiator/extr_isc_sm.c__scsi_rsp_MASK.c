#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  itt; } ;
struct TYPE_19__ {TYPE_1__ bhs; } ;
struct TYPE_17__ {TYPE_2__ ipdu; } ;
struct TYPE_20__ {TYPE_12__ pdu; } ;
typedef  TYPE_3__ pduq_t ;
struct TYPE_21__ {int /*<<< orphan*/  isc; int /*<<< orphan*/  sid; } ;
typedef  TYPE_4__ isc_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_12__*) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(isc_session_t *sp, pduq_t *pq)
{
     pduq_t	*opq;

     FUNC1(8);
     opq = FUNC3(sp, pq->pdu.ipdu.bhs.itt, 0);
     FUNC0(5, "itt=%x pq=%p opq=%p", FUNC5(pq->pdu.ipdu.bhs.itt), pq, opq);
     if(opq != NULL) {
	  FUNC4(sp, opq, pq);
	  FUNC2(sp, &pq->pdu);
     }
     else
	  FUNC7("%d] we lost something itt=%x",
		 sp->sid, FUNC5(pq->pdu.ipdu.bhs.itt));
     FUNC6(sp->isc, pq);
}