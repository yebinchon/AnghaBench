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
 char ESC ; 
 char FHLF ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ fine ; 
 int nblank_lines ; 

__attribute__((used)) static void
FUNC1(void)
{
	int half, i, nb;

	half = 0;
	nb = nblank_lines;
	if (nb & 1) {
		if (fine)
			half = 1;
		else
			nb++;
	}
	nb /= 2;
	for (i = nb; --i >= 0;)
		FUNC0('\n');
	if (half) {
		FUNC0(ESC);
		FUNC0(FHLF);
		if (!nb)
			FUNC0('\r');
	}
	nblank_lines = 0;
}