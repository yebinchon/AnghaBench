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
typedef  int u_int ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC3(u_int * frequency, u_int * voltage, u_int * percentage)
{
	register_t	saveintr;
	u_int		regs[4];

	saveintr = FUNC1();

	FUNC0(0x80860007, regs);
	*frequency = regs[0];
	*voltage = regs[1];
	*percentage = regs[2];

	FUNC2(saveintr);
	return (1);
}