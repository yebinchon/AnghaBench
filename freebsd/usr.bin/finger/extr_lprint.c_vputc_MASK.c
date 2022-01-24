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
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 unsigned char FUNC3 (unsigned char) ; 

__attribute__((used)) static void
FUNC4(unsigned char ch)
{
	int meta;

	if (!FUNC1(ch) && !FUNC0(ch)) {
		(void)FUNC2('M');
		(void)FUNC2('-');
		ch = FUNC3(ch);
		meta = 1;
	} else
		meta = 0;
	if (FUNC1(ch) || (!meta && (ch == ' ' || ch == '\t' || ch == '\n')))
		(void)FUNC2(ch);
	else {
		(void)FUNC2('^');
		(void)FUNC2(ch == '\177' ? '?' : ch | 0100);
	}
}