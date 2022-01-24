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
 int hunkmax ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/ * p_char ; 
 int /*<<< orphan*/ * p_len ; 
 int /*<<< orphan*/ * p_line ; 

void
FUNC1(void)
{
	if (p_line == NULL)
		p_line = FUNC0(hunkmax * sizeof(char *));
	if (p_len == NULL)
		p_len = FUNC0(hunkmax * sizeof(unsigned short));
	if (p_char == NULL)
		p_char = FUNC0(hunkmax * sizeof(char));
}