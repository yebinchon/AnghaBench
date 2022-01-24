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
struct smb_connobj {scalar_t__ co_lockcnt; scalar_t__ co_flags; int /*<<< orphan*/ * co_locker; int /*<<< orphan*/  co_lock; int /*<<< orphan*/  co_interlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct smb_connobj *cp)
{

	FUNC1(&cp->co_interlock);
	FUNC0(&cp->co_lock);
	cp->co_locker = NULL;
	cp->co_flags = 0;
	cp->co_lockcnt = 0;
}