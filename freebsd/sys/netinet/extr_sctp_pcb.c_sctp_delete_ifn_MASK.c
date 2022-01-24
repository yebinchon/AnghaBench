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
struct sctp_ifn {int /*<<< orphan*/  registered_af; int /*<<< orphan*/  ifn_index; int /*<<< orphan*/  ifn_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_ifn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  next_bucket ; 
 int /*<<< orphan*/  next_ifn ; 
 struct sctp_ifn* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_ifn*) ; 

__attribute__((used)) static void
FUNC6(struct sctp_ifn *sctp_ifnp, int hold_addr_lock)
{
	struct sctp_ifn *found;

	found = FUNC4(sctp_ifnp->ifn_p, sctp_ifnp->ifn_index);
	if (found == NULL) {
		/* Not in the list.. sorry */
		return;
	}
	if (hold_addr_lock == 0)
		FUNC2();
	FUNC0(sctp_ifnp, next_bucket);
	FUNC0(sctp_ifnp, next_ifn);
	FUNC1(sctp_ifnp->ifn_index,
	    sctp_ifnp->registered_af);
	if (hold_addr_lock == 0)
		FUNC3();
	/* Take away the reference, and possibly free it */
	FUNC5(sctp_ifnp);
}