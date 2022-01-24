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
 scalar_t__ MALTA_ASCII_BASE ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__* malta_lcd_offs ; 

__attribute__((used)) static void
FUNC1(int pos, char c)
{
	void *addr;
	char *ch;

	if (pos < 0 || pos > 7)
		return;
	addr = (void *)(MALTA_ASCII_BASE + malta_lcd_offs[pos]);
	ch = (char *)FUNC0(addr);
	*ch = c;
}