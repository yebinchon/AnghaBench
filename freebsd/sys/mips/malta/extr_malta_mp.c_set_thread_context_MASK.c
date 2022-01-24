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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 

__attribute__((used)) static void
FUNC3(int cpuid)
{
	uint32_t reg;

	reg = FUNC1(1, 1);
	reg &= ~(0xff);
	reg |= cpuid;
	FUNC2(1, 1, reg);

	FUNC0();
}