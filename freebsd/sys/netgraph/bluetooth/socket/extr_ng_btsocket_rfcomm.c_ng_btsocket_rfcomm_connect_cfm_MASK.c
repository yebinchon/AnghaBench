#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ng_btsocket_rfcomm_session_p ;
typedef  TYPE_2__* ng_btsocket_rfcomm_pcb_p ;
struct TYPE_12__ {int /*<<< orphan*/  src; } ;
struct TYPE_11__ {scalar_t__ state; int /*<<< orphan*/  pcb_mtx; int /*<<< orphan*/  src; int /*<<< orphan*/  mtu; } ;
struct TYPE_10__ {int /*<<< orphan*/  l2so; int /*<<< orphan*/  mtu; int /*<<< orphan*/  dlcs; int /*<<< orphan*/  session_mtx; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ NG_BTSOCKET_RFCOMM_DLC_CONFIGURING ; 
 scalar_t__ NG_BTSOCKET_RFCOMM_DLC_W4_CONNECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  session_next ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(ng_btsocket_rfcomm_session_p s)
{
	ng_btsocket_rfcomm_pcb_p	pcb = NULL, pcb_next = NULL;
	int				error;

	FUNC3(&s->session_mtx, MA_OWNED);

	/*
	 * Wake up all waiting sockets and send PN request for each of them. 
	 * Note that timeout already been set in ng_btsocket_rfcomm_connect()
	 *
	 * Note: cannot use LIST_FOREACH because ng_btsocket_rfcomm_pcb_kill
	 * will unlink DLC from the session
	 */

	for (pcb = FUNC0(&s->dlcs); pcb != NULL; ) {
		FUNC4(&pcb->pcb_mtx);
		pcb_next = FUNC1(pcb, session_next);

		if (pcb->state == NG_BTSOCKET_RFCOMM_DLC_W4_CONNECT) {
			pcb->mtu = s->mtu;
			FUNC2(&FUNC8(s->l2so)->src, &pcb->src,
				sizeof(pcb->src));

			error = FUNC7(pcb);
			if (error == 0)
				pcb->state = NG_BTSOCKET_RFCOMM_DLC_CONFIGURING;
			else
				FUNC6(pcb, error);
		}

		FUNC5(&pcb->pcb_mtx);
		pcb = pcb_next;
	}
}