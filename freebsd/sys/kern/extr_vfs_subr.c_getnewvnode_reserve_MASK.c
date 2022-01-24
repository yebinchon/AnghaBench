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
typedef  scalar_t__ u_int ;
struct thread {scalar_t__ td_vp_reserv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__) ; 
 struct thread* curthread ; 
 scalar_t__ desiredvnodes ; 
 scalar_t__ freevnodes ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ numvnodes ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vnode_free_list_mtx ; 
 scalar_t__ wantfreevnodes ; 

void
FUNC9(u_int count)
{
	struct thread *td;

	/* Pre-adjust like the pre-adjust in getnewvnode(), with any count. */
	/* XXX no longer so quick, but this part is not racy. */
	FUNC4(&vnode_free_list_mtx);
	if (numvnodes + count > desiredvnodes && freevnodes > wantfreevnodes)
		FUNC8(FUNC6(numvnodes + count - desiredvnodes,
		    freevnodes - wantfreevnodes), NULL);
	FUNC5(&vnode_free_list_mtx);

	td = curthread;
	/* First try to be quick and racy. */
	if (FUNC1(&numvnodes, count) + count <= desiredvnodes) {
		td->td_vp_reserv += count;
		FUNC7();	/* XXX no longer so quick, but more racy */
		return;
	} else
		FUNC2(&numvnodes, count);

	FUNC4(&vnode_free_list_mtx);
	while (count > 0) {
		if (FUNC3(0) == 0) {
			count--;
			td->td_vp_reserv++;
			FUNC0(&numvnodes, 1);
		}
	}
	FUNC7();
	FUNC5(&vnode_free_list_mtx);
}