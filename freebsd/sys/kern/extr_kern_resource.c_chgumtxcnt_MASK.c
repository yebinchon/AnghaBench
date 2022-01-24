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
struct uidinfo {int /*<<< orphan*/  ui_umtxcnt; } ;
typedef  int /*<<< orphan*/  rlim_t ;

/* Variables and functions */
 int FUNC0 (struct uidinfo*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 

int
FUNC1(struct uidinfo *uip, int diff, rlim_t max)
{

	return (FUNC0(uip, &uip->ui_umtxcnt, diff, max, "umtxcnt"));
}