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
struct veriexec_devhead {int dummy; } ;
struct veriexec_dev_list {scalar_t__ fsid; int /*<<< orphan*/  file_head; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 struct veriexec_dev_list* FUNC0 (struct veriexec_devhead*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct veriexec_devhead*,struct veriexec_dev_list*,int /*<<< orphan*/ ) ; 
 struct veriexec_dev_list* FUNC3 (struct veriexec_dev_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_VERIEXEC ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC4 (struct veriexec_dev_list*,int /*<<< orphan*/ ) ; 
 struct veriexec_dev_list* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ve_mutex ; 

__attribute__((used)) static struct veriexec_dev_list *
FUNC8(dev_t fsid, struct veriexec_devhead *head)
{
	struct veriexec_dev_list *lp;
	struct veriexec_dev_list *np = NULL;

search:
	/* Look for the file system */
	for (lp = FUNC0(head); lp != NULL;
	     lp = FUNC3(lp, entries))
		if (lp->fsid == fsid) break;

	if (lp == NULL) {
		if (np == NULL) {
			/*
			 * If pointer is null then entry not there,
			 * add a new one, first try to malloc while
			 * we hold mutex - should work most of the time.
			 */
			np = FUNC5(sizeof(struct veriexec_dev_list),
			    M_VERIEXEC, M_NOWAIT);
			if (np == NULL) {
				/*
				 * So much for that plan, dop the mutex
				 * and repeat...
				 */
				FUNC7(&ve_mutex);
				np = FUNC5(sizeof(struct veriexec_dev_list),
				    M_VERIEXEC, M_WAITOK);
				FUNC6(&ve_mutex);
				/*
				 * Repeat the seach, in case someone
				 * added this while we slept.
				 */
				goto search;
			}
		}
		if (np) {
			/* Add the entry to the list */
			lp = np;
			FUNC1(&(lp->file_head));
			lp->fsid = fsid;
			FUNC2(head, lp, entries);
		}
	} else if (np) {
		/*
		 * Someone else did it while we slept.
		 */
		FUNC7(&ve_mutex);
		FUNC4(np, M_VERIEXEC);
		FUNC6(&ve_mutex);
	}

	return (lp);
}