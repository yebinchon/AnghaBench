#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct QBUFFER {int data_len; } ;
struct AdapterControlBlock {int rqbuf_lastindex; int rqbuf_firstindex; int /*<<< orphan*/  qbuffer_lock; int /*<<< orphan*/  acb_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACB_F_IOPDATA_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ARCMSR_MAX_QBUFFER ; 
 scalar_t__ FUNC2 (struct AdapterControlBlock*,struct QBUFFER*) ; 
 struct QBUFFER* FUNC3 (struct AdapterControlBlock*) ; 

__attribute__((used)) static void FUNC4(struct AdapterControlBlock *acb)
{
	struct QBUFFER *prbuffer;
	int my_empty_len;

	/*check this iop data if overflow my rqbuffer*/
	FUNC0(&acb->qbuffer_lock);
	prbuffer = FUNC3(acb);
	my_empty_len = (acb->rqbuf_lastindex - acb->rqbuf_firstindex - 1) &
		(ARCMSR_MAX_QBUFFER-1);
	if(my_empty_len >= prbuffer->data_len) {
		if(FUNC2(acb, prbuffer) == 0)
			acb->acb_flags |= ACB_F_IOPDATA_OVERFLOW;
	} else {
		acb->acb_flags |= ACB_F_IOPDATA_OVERFLOW;
	}
	FUNC1(&acb->qbuffer_lock);
}