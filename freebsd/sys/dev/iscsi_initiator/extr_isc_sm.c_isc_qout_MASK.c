#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ opcode; } ;
struct TYPE_18__ {scalar_t__ I; } ;
struct TYPE_20__ {TYPE_2__ data_out; TYPE_1__ bhs; } ;
struct TYPE_21__ {TYPE_3__ ipdu; } ;
struct TYPE_22__ {scalar_t__ len; TYPE_4__ pdu; } ;
typedef  TYPE_5__ pduq_t ;
struct TYPE_23__ {int flags; int /*<<< orphan*/  io_mtx; } ;
typedef  TYPE_6__ isc_session_t ;

/* Variables and functions */
 scalar_t__ ISCSI_WRITE_DATA ; 
 int ISC_OQNOTEMPTY ; 
 int ISC_OWAITING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_5__*) ; 
 int FUNC4 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 

int
FUNC9(isc_session_t *sp, pduq_t *pq)
{
     int error = 0;

     FUNC0(8);

     if(pq->len == 0 && (error = FUNC4(sp, pq)))
	  return error;

     if(pq->pdu.ipdu.bhs.I)
	  FUNC2(sp, pq);
     else
     if(pq->pdu.ipdu.data_out.opcode == ISCSI_WRITE_DATA)
	  FUNC3(sp, pq);
     else
	  FUNC1(sp, pq);

     FUNC7(5, "enqued: pq=%p", pq);

     FUNC5(&sp->io_mtx);
     sp->flags |= ISC_OQNOTEMPTY;
     if(sp->flags & ISC_OWAITING)
	  FUNC8(&sp->flags);
     FUNC6(&sp->io_mtx);

     return error;
}