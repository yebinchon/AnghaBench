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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  REG_CMD1 ; 
 int /*<<< orphan*/  REG_TEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, int probe)
{
	int error;

	/*
	 * init procedure: send 0x00 to test ref and cmd reg 1
	 */
	error = FUNC1(dev, REG_TEST, 0);
	if (error)
		goto done;
	error = FUNC1(dev, REG_CMD1, 0);
	if (error)
		goto done;

	FUNC2("islinit", hz/100);

done:
	if (error && !probe)
		FUNC0(dev, "Unable to initialize\n");
	return (error);
}