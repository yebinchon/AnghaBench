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
struct TYPE_2__ {int /*<<< orphan*/  device_list_mutex; int /*<<< orphan*/  connlist_mutex; int /*<<< orphan*/  close_conns_mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ icl_iser_ncons ; 
 int /*<<< orphan*/  icl_pdu_zone ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 TYPE_1__ ig ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void)
{
	FUNC0("Removing iSER datamover...");

	if (icl_iser_ncons != 0)
		return (EBUSY);

	FUNC3(&ig.close_conns_mutex);
	FUNC2(&ig.connlist_mutex);
	FUNC3(&ig.device_list_mutex);

	FUNC1("iser", true);

	FUNC4(icl_pdu_zone);

	return (0);
}