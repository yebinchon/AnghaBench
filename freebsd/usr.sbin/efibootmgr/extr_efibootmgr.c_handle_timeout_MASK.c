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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  timeout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(int to)
{
	uint16_t timeout;

	FUNC1(&timeout, to);
	if (FUNC2("Timeout", (uint8_t *)&timeout, sizeof(timeout)) < 0)
		FUNC0(1, "Can't set Timeout for booting.");
}