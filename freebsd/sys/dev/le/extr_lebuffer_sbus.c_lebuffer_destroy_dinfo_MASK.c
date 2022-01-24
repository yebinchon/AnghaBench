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
struct lebuffer_devinfo {int /*<<< orphan*/  ldi_obdinfo; int /*<<< orphan*/  ldi_rl; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct lebuffer_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct lebuffer_devinfo *dinfo)
{

	FUNC2(&dinfo->ldi_rl);
	FUNC1(&dinfo->ldi_obdinfo);
	FUNC0(dinfo, M_DEVBUF);
}