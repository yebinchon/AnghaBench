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
typedef  int /*<<< orphan*/  uintmax_t ;
struct veriexec_devhead {int dummy; } ;
struct veriexec_dev_list {scalar_t__ fsid; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 struct veriexec_dev_list* FUNC0 (struct veriexec_devhead*) ; 
 struct veriexec_dev_list* FUNC1 (struct veriexec_dev_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,struct veriexec_dev_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct sbuf *sbp, struct veriexec_devhead *head)
{
	struct veriexec_dev_list *lp;

	for (lp = FUNC0(head); lp != NULL; lp = FUNC1(lp, entries)) {
		FUNC3(sbp, " FS id: %ju\n", (uintmax_t)lp->fsid);
		FUNC2(sbp, lp);
	}

}