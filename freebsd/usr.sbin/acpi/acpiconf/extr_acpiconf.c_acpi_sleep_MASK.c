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
 int /*<<< orphan*/  ACPIIO_REQSLPSTATE ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  acpifd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC2(int sleep_type)
{
	int ret;
  
	/* Notify OS that we want to sleep.  devd(8) gets this notify. */
	ret = FUNC1(acpifd, ACPIIO_REQSLPSTATE, &sleep_type);
	if (ret != 0)
		FUNC0(EX_IOERR, "request sleep type (%d) failed", sleep_type);
}