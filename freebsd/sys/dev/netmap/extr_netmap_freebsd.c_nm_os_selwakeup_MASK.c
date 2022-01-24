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
struct nm_selinfo {scalar_t__ kqueue_users; int /*<<< orphan*/  ntfytask; int /*<<< orphan*/  ntfytq; int /*<<< orphan*/  si; } ;

/* Variables and functions */
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct nm_selinfo *si)
{
	FUNC0(&si->si, PI_NET);
	if (si->kqueue_users > 0) {
		FUNC1(si->ntfytq, &si->ntfytask);
	}
}