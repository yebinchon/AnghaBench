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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ UCOM_UNIT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ucom_mtx ; 
 int /*<<< orphan*/  ucom_unrhdr ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	FUNC0("\n");
	ucom_unrhdr = FUNC2(0, UCOM_UNIT_MAX - 1, NULL);
	FUNC1(&ucom_mtx, "UCOM MTX", NULL, MTX_DEF);
}