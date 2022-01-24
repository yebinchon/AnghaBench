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
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_18__ {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_wait_free; int /*<<< orphan*/  os; int /*<<< orphan*/  q_hist; } ;
typedef  TYPE_2__ ocs_hw_t ;
struct TYPE_19__ {scalar_t__ state; scalar_t__ is_port_owned; int /*<<< orphan*/  rnode; scalar_t__ status_saved; int /*<<< orphan*/  (* done ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  saved_ext; int /*<<< orphan*/  saved_len; int /*<<< orphan*/  saved_status; void* arg; int /*<<< orphan*/  ref; scalar_t__ xbusy; } ;
typedef  TYPE_3__ ocs_hw_io_t ;
typedef  int /*<<< orphan*/  (* ocs_hw_done_t ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_20__ {TYPE_1__* queue; } ;
typedef  TYPE_5__ hw_cq_t ;
struct TYPE_17__ {int index; int length; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ OCS_HW_IO_STATE_FREE ; 
 scalar_t__ OCS_HW_IO_STATE_INUSE ; 
 scalar_t__ OCS_HW_IO_STATE_WAIT_FREE ; 
 int /*<<< orphan*/  SLI_QENTRY_XABT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(ocs_hw_t *hw, hw_cq_t *cq, uint8_t *cqe, uint16_t rid)
{
	/* search IOs wait free list */
	ocs_hw_io_t *io = NULL;

	io = FUNC2(hw, rid);

	FUNC8(&hw->q_hist, SLI_QENTRY_XABT, (void *)cqe, 0, cq->queue->id,
			      ((cq->queue->index - 1) & (cq->queue->length - 1)));
	if (io == NULL) {
		/* IO lookup failure should never happen */
		FUNC7(hw->os, "Error: xabt io lookup failed rid=%#x\n", rid);
		return;
	}

	if (!io->xbusy) {
		FUNC6(hw->os, "xabt io not busy rid=%#x\n", rid);
	} else {
		/* mark IO as no longer busy */
		io->xbusy = FALSE;
	}

       if (io->is_port_owned) {
               FUNC5(&hw->io_lock);
               /* Take reference so that below callback will not free io before reque */
               FUNC9(&io->ref);
               FUNC10(&hw->io_lock);
       }



	/* For IOs that were aborted internally, we need to issue any pending callback here. */
	if (io->done != NULL) {
		ocs_hw_done_t  done = io->done;
		void		*arg = io->arg;

		/* Use latched status as this is always saved for an internal abort */
		int32_t status = io->saved_status;
		uint32_t len = io->saved_len;
		uint32_t ext = io->saved_ext;

		io->done = NULL;
		io->status_saved = 0;

		done(io, io->rnode, len, status, ext, arg);
	}

	/* Check to see if this is a port owned XRI */
	if (io->is_port_owned) {
		FUNC5(&hw->io_lock);
		FUNC3(hw, io);
		FUNC10(&hw->io_lock);
		/* Not hanlding reque xri completion, free io */
		FUNC0(hw, io);
		return;
	}

	FUNC5(&hw->io_lock);
		if ((io->state == OCS_HW_IO_STATE_INUSE) || (io->state == OCS_HW_IO_STATE_WAIT_FREE)) {
			/* if on wait_free list, caller has already freed IO;
			 * remove from wait_free list and add to free list.
			 * if on in-use list, already marked as no longer busy;
			 * just leave there and wait for caller to free.
			 */
			if (io->state == OCS_HW_IO_STATE_WAIT_FREE) {
				io->state = OCS_HW_IO_STATE_FREE;
				FUNC4(&hw->io_wait_free, io);
				FUNC1(hw, io);
			}
		}
	FUNC10(&hw->io_lock);
}