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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_LAST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtas_shutdown ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  shutdown_final ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	if (FUNC2("get-time-of-day") != -1)
		FUNC1(dev, 2000);
	
	FUNC0(shutdown_final, rtas_shutdown, NULL,
	    SHUTDOWN_PRI_LAST);

	return (0);
}