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
struct scope6_id {int dummy; } ;
struct ifnet {int dummy; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 struct scope6_id* FUNC2 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC3(struct ifnet *ifp, struct scope6_id *idlist)
{
	struct epoch_tracker et;
	struct scope6_id *sid;

	/* We only need to lock the interface's afdata for SID() to work. */
	FUNC0(et);
	sid = FUNC2(ifp);
	if (sid == NULL) {	/* paranoid? */
		FUNC1(et);
		return (EINVAL);
	}

	*idlist = *sid;

	FUNC1(et);
	return (0);
}