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
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(KBDC kbdc, int command)
{
	int c;

	c = (command >> 6) & 0x03;
	if (FUNC0(kbdc, c) != c)
		return (FALSE);
	c = (command >> 4) & 0x03;
	if (FUNC0(kbdc, c) != c)
		return (FALSE);
	c = (command >> 2) & 0x03;
	if (FUNC0(kbdc, c) != c)
		return (FALSE);
	c = (command >> 0) & 0x03;
	if (FUNC0(kbdc, c) != c)
		return (FALSE);
	return (TRUE);
}