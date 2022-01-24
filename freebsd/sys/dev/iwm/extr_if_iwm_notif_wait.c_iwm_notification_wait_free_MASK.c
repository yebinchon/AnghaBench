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
struct iwm_notif_wait_data {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwm_notif_wait_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwm_notif_wait_data*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct iwm_notif_wait_data *notif_data)
{
	FUNC1(FUNC2(&notif_data->list), ("notif list isn't empty"));
	FUNC0(notif_data);
	FUNC3(notif_data, M_DEVBUF);
}