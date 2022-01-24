#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  evheap; int /*<<< orphan*/  fshash; int /*<<< orphan*/  schedhash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ dn_cfg ; 
 int dn_gone ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dn_task ; 
 int /*<<< orphan*/  dn_timeout ; 
 int /*<<< orphan*/  dn_tq ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ip_dn_ctl_ptr ; 
 int /*<<< orphan*/ * ip_dn_io_ptr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(int last)
{
	FUNC0();
	/* ensure no more callouts are started */
	dn_gone = 1;

	/* check for last */
	if (last) {
		FUNC3("removing last instance\n");
		ip_dn_ctl_ptr = NULL;
		ip_dn_io_ptr = NULL;
	}

	FUNC6();
	FUNC1();

	FUNC4(&dn_timeout);
	FUNC8(dn_tq, &dn_task);
	FUNC9(dn_tq);

	FUNC5(dn_cfg.schedhash, 0);
	FUNC5(dn_cfg.fshash, 0);
	FUNC7(&dn_cfg.evheap);

	FUNC2();
}