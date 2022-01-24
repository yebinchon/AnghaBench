#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  itt; } ;
struct TYPE_17__ {TYPE_1__ bhs; } ;
struct TYPE_18__ {TYPE_2__ ipdu; } ;
struct TYPE_19__ {TYPE_3__ pdu; } ;
typedef  TYPE_4__ pduq_t ;
struct TYPE_20__ {int /*<<< orphan*/  isc; int /*<<< orphan*/  sid; } ;
typedef  TYPE_5__ isc_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_4__*) ; 
 TYPE_4__* FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC5 (TYPE_5__*,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(isc_session_t *sp, pduq_t *pq)
{
     pduq_t		*opq;

     FUNC0(8);
     opq = FUNC2(sp, pq->pdu.ipdu.bhs.itt, 1);
     if(opq != NULL) {
	  if(FUNC5(sp, opq, pq) != 1) {
	       FUNC1(sp, opq); // done
	       FUNC4(sp->isc, opq);
	  }
     }
     else
	  FUNC6("%d] we lost something itt=%x",
		 sp->sid, FUNC3(pq->pdu.ipdu.bhs.itt));
     FUNC4(sp->isc, pq);
}