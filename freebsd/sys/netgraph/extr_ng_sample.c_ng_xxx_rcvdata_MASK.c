#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xxx_p ;
struct mbuf {int dummy; } ;
struct XXX_hookinfo {int dlci; int channel; } ;
typedef  int /*<<< orphan*/  item_p ;
typedef  scalar_t__ hook_p ;
struct TYPE_6__ {scalar_t__ hook; } ;
struct TYPE_7__ {TYPE_2__ downstream_hook; int /*<<< orphan*/  packets_in; TYPE_1__* channel; int /*<<< orphan*/  packets_out; } ;
struct TYPE_5__ {int dlci; scalar_t__ hook; } ;

/* Variables and functions */
 int ENETUNREACH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,scalar_t__,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int XXX_NUM_DLCIS ; 

__attribute__((used)) static int
FUNC7(hook_p hook, item_p item )
{
	const xxx_p xxxp = FUNC6(FUNC4(hook));
	int chan = -2;
	int dlci = -2;
	int error;
	struct mbuf *m;

	FUNC0(item, m);
	if (FUNC5(hook)) {
		dlci = ((struct XXX_hookinfo *) FUNC5(hook))->dlci;
		chan = ((struct XXX_hookinfo *) FUNC5(hook))->channel;
		if (dlci != -1) {
			/* If received on a DLCI hook process for this
			 * channel and pass it to the downstream module.
			 * Normally one would add a multiplexing header at
			 * the front here */
			/* M_PREPEND(....)	; */
			/* mtod(m, xxxxxx)->dlci = dlci; */
			FUNC3(error, item,
				xxxp->downstream_hook.hook, m);
			xxxp->packets_out++;
		} else {
			/* data came from the multiplexed link */
			dlci = 1;	/* get dlci from header */
			/* madjust(....) *//* chop off header */
			for (chan = 0; chan < XXX_NUM_DLCIS; chan++)
				if (xxxp->channel[chan].dlci == dlci)
					break;
			if (chan == XXX_NUM_DLCIS) {
				FUNC1(item);
				FUNC2(m);
				return (ENETUNREACH);
			}
			/* If we were called at splnet, use the following:
			 * NG_SEND_DATA_ONLY(error, otherhook, m); if this
			 * node is running at some SPL other than SPLNET
			 * then you should use instead: error =
			 * ng_queueit(otherhook, m, NULL); m = NULL;
			 * This queues the data using the standard NETISR
			 * system and schedules the data to be picked
			 * up again once the system has moved to SPLNET and
			 * the processing of the data can continue. After
			 * these are run 'm' should be considered
			 * as invalid and NG_SEND_DATA actually zaps them. */
			FUNC3(error, item,
				xxxp->channel[chan].hook, m);
			xxxp->packets_in++;
		}
	} else {
		/* It's the debug hook, throw it away.. */
		if (hook == xxxp->downstream_hook.hook) {
			FUNC1(item);
			FUNC2(m);
		}
	}
	return 0;
}