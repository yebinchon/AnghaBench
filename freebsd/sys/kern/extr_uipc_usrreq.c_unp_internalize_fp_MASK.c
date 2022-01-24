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
struct unpcb {int /*<<< orphan*/  unp_msgcount; struct file* unp_file; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct unpcb* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  unp_rights ; 

__attribute__((used)) static void
FUNC3(struct file *fp)
{
	struct unpcb *unp;

	FUNC0();
	if ((unp = FUNC2(fp)) != NULL) {
		unp->unp_file = fp;
		unp->unp_msgcount++;
	}
	unp_rights++;
	FUNC1();
}