#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct timeval {int dummy; } ;
struct tcpcb {scalar_t__ t_in_pkt; TYPE_1__* t_fb; int /*<<< orphan*/ * t_fb_ptr; int /*<<< orphan*/ * t_inpcb; } ;
struct tcp_hpts_entry {struct inpcb* p_inp; int /*<<< orphan*/  p_mtx; int /*<<< orphan*/  p_input; } ;
struct inpcb {scalar_t__ inp_input_cpu_set; int inp_flags; int inp_flags2; int /*<<< orphan*/  inp_socket; scalar_t__ inp_in_input; int /*<<< orphan*/  inp_vnet; int /*<<< orphan*/  inp_hpts_drop_reas; } ;
typedef  int int16_t ;
struct TYPE_2__ {int (* tfb_do_queued_segments ) (int /*<<< orphan*/ ,struct tcpcb*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_hpts_entry*) ; 
 int /*<<< orphan*/  HPTS_REMOVE_INPUT ; 
 int INP_DROPPED ; 
 int INP_FREED ; 
 int INP_SUPPORTS_MBUFQ ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct inpcb* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tcp_hpts_entry*,struct inpcb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct inpcb*) ; 
 struct tcpcb* FUNC10 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct tcpcb*,int /*<<< orphan*/ ) ; 
 struct tcpcb* FUNC15 (struct tcpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC17 (struct inpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inpcb*) ; 

__attribute__((used)) static void
FUNC19(struct tcp_hpts_entry *hpts, struct timeval *tv)
{
	struct tcpcb *tp;
	struct inpcb *inp;
	uint16_t drop_reason;
	int16_t set_cpu;
	uint32_t did_prefetch = 0;
	int dropped;

	FUNC2(hpts);
	FUNC6();

	while ((inp = FUNC7(&hpts->p_input)) != NULL) {
		FUNC2(hpts);
		FUNC8(hpts, inp, 0);
		if (inp->inp_input_cpu_set == 0) {
			set_cpu = 1;
		} else {
			set_cpu = 0;
		}
		hpts->p_inp = inp;
		drop_reason = inp->inp_hpts_drop_reas;
		inp->inp_in_input = 0;
		FUNC13(&hpts->p_mtx);
		FUNC4(inp);
#ifdef VIMAGE
		CURVNET_SET(inp->inp_vnet);
#endif
		if ((inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) ||
		    (inp->inp_flags2 & INP_FREED)) {
out:
			hpts->p_inp = NULL;
			if (FUNC9(inp) == 0) {
				FUNC5(inp);
			}
#ifdef VIMAGE
			CURVNET_RESTORE();
#endif
			FUNC12(&hpts->p_mtx);
			continue;
		}
		tp = FUNC10(inp);
		if ((tp == NULL) || (tp->t_inpcb == NULL)) {
			goto out;
		}
		if (drop_reason) {
			/* This tcb is being destroyed for drop_reason */
			FUNC16(tp);
			tp = FUNC15(tp, drop_reason);
			if (tp == NULL) {
				FUNC4(inp);
			}
			if (FUNC9(inp) == 0)
				FUNC5(inp);
#ifdef VIMAGE
			CURVNET_RESTORE();
#endif
			FUNC12(&hpts->p_mtx);
			continue;
		}
		if (set_cpu) {
			/*
			 * Setup so the next time we will move to the right
			 * CPU. This should be a rare event. It will
			 * sometimes happens when we are the client side
			 * (usually not the server). Somehow tcp_output()
			 * gets called before the tcp_do_segment() sets the
			 * intial state. This means the r_cpu and r_hpts_cpu
			 * is 0. We get on the hpts, and then tcp_input()
			 * gets called setting up the r_cpu to the correct
			 * value. The hpts goes off and sees the mis-match.
			 * We simply correct it here and the CPU will switch
			 * to the new hpts nextime the tcb gets added to the
			 * the hpts (not this time) :-)
			 */
			FUNC18(inp);
		}
		if (tp->t_fb_ptr != NULL) {
			FUNC11(tp->t_fb_ptr, &did_prefetch);
			did_prefetch = 1;
		}
		if ((inp->inp_flags2 & INP_SUPPORTS_MBUFQ) && tp->t_in_pkt) {
			if (inp->inp_in_input)
				FUNC17(inp, HPTS_REMOVE_INPUT);
			dropped = (*tp->t_fb->tfb_do_queued_segments)(inp->inp_socket, tp, 0);
			if (dropped) {
				/* Re-acquire the wlock so we can release the reference */
				FUNC4(inp);
			}
		} else if (tp->t_in_pkt) {
			/* 
			 * We reach here only if we had a 
			 * stack that supported INP_SUPPORTS_MBUFQ
			 * and then somehow switched to a stack that
			 * does not. The packets are basically stranded
			 * and would hang with the connection until
			 * cleanup without this code. Its not the
			 * best way but I know of no other way to
			 * handle it since the stack needs functions
			 * it does not have to handle queued packets.
			 */
			FUNC16(tp);
		}
		if (FUNC9(inp) == 0)
			FUNC5(inp);
		FUNC3(inp);
#ifdef VIMAGE
		CURVNET_RESTORE();
#endif
		FUNC12(&hpts->p_mtx);
		hpts->p_inp = NULL;
	}
}