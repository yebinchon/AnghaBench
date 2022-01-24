#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sctp_iterator {int pcb_flags; int pcb_features; int iterator_flags; int done_current_ep; int (* function_inp ) (struct sctp_inpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* function_inp_end ) (struct sctp_inpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int asoc_state; scalar_t__ no_chunk_output; struct sctp_inpcb* inp; int /*<<< orphan*/  val; int /*<<< orphan*/  pointer; struct sctp_inpcb* stcb; int /*<<< orphan*/  (* function_assoc ) (struct sctp_inpcb*,struct sctp_inpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* function_atend ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int state; int /*<<< orphan*/  refcnt; } ;
struct sctp_inpcb {int sctp_flags; int sctp_features; TYPE_1__ asoc; int /*<<< orphan*/  sctp_asoc_list; } ;
struct TYPE_4__ {int iterator_flags; struct sctp_iterator* cur_it; } ;

/* Variables and functions */
 struct sctp_inpcb* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (struct sctp_inpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_iterator*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_inpcb*) ; 
 int SCTP_ITERATOR_DO_SINGLE_INP ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int SCTP_ITERATOR_MAX_AT_ONCE ; 
 int SCTP_ITERATOR_STOP_CUR_INP ; 
 int SCTP_ITERATOR_STOP_CUR_IT ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  SCTP_M_ITER ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_T3 ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  SCTP_SO_NOT_LOCKED ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC13 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sctp_inpcb*,struct sctp_inpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ sctp_it_ctl ; 
 int /*<<< orphan*/  sctp_list ; 
 int /*<<< orphan*/  sctp_tcblist ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct sctp_inpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct sctp_inpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sctp_inpcb*,struct sctp_inpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct sctp_inpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(struct sctp_iterator *it)
{
	int iteration_count = 0;
	int inp_skip = 0;
	int first_in = 1;
	struct sctp_inpcb *tinp;

	FUNC5();
	FUNC9();
	sctp_it_ctl.cur_it = it;
	if (it->inp) {
		FUNC7(it->inp);
		FUNC3(it->inp);
	}
	if (it->inp == NULL) {
		/* iterator is complete */
done_with_iterator:
		sctp_it_ctl.cur_it = NULL;
		FUNC10();
		FUNC6();
		if (it->function_atend != NULL) {
			(*it->function_atend) (it->pointer, it->val);
		}
		FUNC2(it, SCTP_M_ITER);
		return;
	}
select_a_new_ep:
	if (first_in) {
		first_in = 0;
	} else {
		FUNC7(it->inp);
	}
	while (((it->pcb_flags) &&
	    ((it->inp->sctp_flags & it->pcb_flags) != it->pcb_flags)) ||
	    ((it->pcb_features) &&
	    ((it->inp->sctp_features & it->pcb_features) != it->pcb_features))) {
		/* endpoint flags or features don't match, so keep looking */
		if (it->iterator_flags & SCTP_ITERATOR_DO_SINGLE_INP) {
			FUNC8(it->inp);
			goto done_with_iterator;
		}
		tinp = it->inp;
		it->inp = FUNC1(it->inp, sctp_list);
		FUNC8(tinp);
		if (it->inp == NULL) {
			goto done_with_iterator;
		}
		FUNC7(it->inp);
	}
	/* now go through each assoc which is in the desired state */
	if (it->done_current_ep == 0) {
		if (it->function_inp != NULL)
			inp_skip = (*it->function_inp) (it->inp, it->pointer, it->val);
		it->done_current_ep = 1;
	}
	if (it->stcb == NULL) {
		/* run the per instance function */
		it->stcb = FUNC0(&it->inp->sctp_asoc_list);
	}
	if ((inp_skip) || it->stcb == NULL) {
		if (it->function_inp_end != NULL) {
			inp_skip = (*it->function_inp_end) (it->inp,
			    it->pointer,
			    it->val);
		}
		FUNC8(it->inp);
		goto no_stcb;
	}
	while (it->stcb) {
		FUNC12(it->stcb);
		if (it->asoc_state && ((it->stcb->asoc.state & it->asoc_state) != it->asoc_state)) {
			/* not in the right state... keep looking */
			FUNC13(it->stcb);
			goto next_assoc;
		}
		/* see if we have limited out the iterator loop */
		iteration_count++;
		if (iteration_count > SCTP_ITERATOR_MAX_AT_ONCE) {
			/* Pause to let others grab the lock */
			FUNC14(&it->stcb->asoc.refcnt, 1);
			FUNC13(it->stcb);
			FUNC4(it->inp);
			FUNC8(it->inp);
			FUNC10();
			FUNC6();
			FUNC5();
			FUNC9();
			if (sctp_it_ctl.iterator_flags) {
				/* We won't be staying here */
				FUNC3(it->inp);
				FUNC14(&it->stcb->asoc.refcnt, -1);
				if (sctp_it_ctl.iterator_flags &
				    SCTP_ITERATOR_STOP_CUR_IT) {
					sctp_it_ctl.iterator_flags &= ~SCTP_ITERATOR_STOP_CUR_IT;
					goto done_with_iterator;
				}
				if (sctp_it_ctl.iterator_flags &
				    SCTP_ITERATOR_STOP_CUR_INP) {
					sctp_it_ctl.iterator_flags &= ~SCTP_ITERATOR_STOP_CUR_INP;
					goto no_stcb;
				}
				/* If we reach here huh? */
				FUNC11("Unknown it ctl flag %x\n",
				    sctp_it_ctl.iterator_flags);
				sctp_it_ctl.iterator_flags = 0;
			}
			FUNC7(it->inp);
			FUNC3(it->inp);
			FUNC12(it->stcb);
			FUNC14(&it->stcb->asoc.refcnt, -1);
			iteration_count = 0;
		}

		/* run function on this one */
		(*it->function_assoc) (it->inp, it->stcb, it->pointer, it->val);

		/*
		 * we lie here, it really needs to have its own type but
		 * first I must verify that this won't effect things :-0
		 */
		if (it->no_chunk_output == 0)
			FUNC15(it->inp, it->stcb, SCTP_OUTPUT_FROM_T3, SCTP_SO_NOT_LOCKED);

		FUNC13(it->stcb);
next_assoc:
		it->stcb = FUNC1(it->stcb, sctp_tcblist);
		if (it->stcb == NULL) {
			/* Run last function */
			if (it->function_inp_end != NULL) {
				inp_skip = (*it->function_inp_end) (it->inp,
				    it->pointer,
				    it->val);
			}
		}
	}
	FUNC8(it->inp);
no_stcb:
	/* done with all assocs on this endpoint, move on to next endpoint */
	it->done_current_ep = 0;
	if (it->iterator_flags & SCTP_ITERATOR_DO_SINGLE_INP) {
		it->inp = NULL;
	} else {
		it->inp = FUNC1(it->inp, sctp_list);
	}
	if (it->inp == NULL) {
		goto done_with_iterator;
	}
	goto select_a_new_ep;
}