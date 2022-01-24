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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

uint64_t FUNC4(int node, int chipselect)
{
	uint64_t gbubase, cpld_phys;

	gbubase = FUNC2(node);
	cpld_phys = FUNC3(gbubase, FUNC0(chipselect));
	return (FUNC1(cpld_phys << 8));
}