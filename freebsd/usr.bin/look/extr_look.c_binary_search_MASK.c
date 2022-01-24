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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 scalar_t__ GREATER ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 

__attribute__((used)) static char *
FUNC2(wchar_t *string, unsigned char *front, unsigned char *back)
{
	unsigned char *p;

	p = front + (back - front) / 2;
	FUNC0(p, back);

	/*
	 * If the file changes underneath us, make sure we don't
	 * infinitely loop.
	 */
	while (p < back && back > front) {
		if (FUNC1(string, p, back) == GREATER)
			front = p;
		else
			back = p;
		p = front + (back - front) / 2;
		FUNC0(p, back);
	}
	return (front);
}