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
struct knlist {int /*<<< orphan*/  kl_lockarg; int /*<<< orphan*/  (* kl_unlock ) (int /*<<< orphan*/ ) ;scalar_t__ kl_autodestroy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_KQUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct knlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct knlist*) ; 
 scalar_t__ FUNC2 (struct knlist*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct knlist *knl)
{
	bool do_free;

	if (knl == NULL)
		return;
	do_free = knl->kl_autodestroy && FUNC2(knl);
	knl->kl_unlock(knl->kl_lockarg);
	if (do_free) {
		FUNC1(knl);
		FUNC0(knl, M_KQUEUE);
	}
}