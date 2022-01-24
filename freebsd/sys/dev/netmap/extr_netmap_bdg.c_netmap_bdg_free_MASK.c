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
struct nm_bridge {int bdg_flags; scalar_t__ bdg_active_ports; int /*<<< orphan*/  bdg_saved_ops; int /*<<< orphan*/  bdg_ops; int /*<<< orphan*/  ht; int /*<<< orphan*/  bdg_basename; } ;

/* Variables and functions */
 int EBUSY ; 
 int NM_BDG_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct nm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct nm_bridge *b)
{
	if ((b->bdg_flags & NM_BDG_ACTIVE) + b->bdg_active_ports != 0) {
		return EBUSY;
	}

	FUNC3("marking bridge %s as free", b->bdg_basename);
	FUNC2(b->ht);
	FUNC1(&b->bdg_ops, 0, sizeof(b->bdg_ops));
	FUNC1(&b->bdg_saved_ops, 0, sizeof(b->bdg_saved_ops));
	b->bdg_flags = 0;
	FUNC0(b);
	return 0;
}