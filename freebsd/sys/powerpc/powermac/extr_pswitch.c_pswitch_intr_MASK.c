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
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  KDB_WHY_POWERPC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void *arg)
{
	device_t	dev;

	dev = (device_t)arg;

	FUNC1(KDB_WHY_POWERPC, FUNC0(dev));
	return (FILTER_HANDLED);
}