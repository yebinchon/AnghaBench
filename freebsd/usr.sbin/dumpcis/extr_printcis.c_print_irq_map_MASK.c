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
typedef  int u_char ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CIS_IRQ_LEVEL ; 
 int CIS_IRQ_MASK ; 
 int CIS_IRQ_PULSE ; 
 int CIS_IRQ_SHARING ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int FUNC3 (int*) ; 

__attribute__((used)) static u_char *
FUNC4(u_char *p, u_char *q)
{
	int i, j;
	u_char c;

	if (q <= p)
		goto err;
	FUNC1("\t\tIRQ modes:");
	c = ' ';
	if (*p & CIS_IRQ_LEVEL) { /* Level triggered interrupts */
		FUNC1(" Level");
		c = ',';
	}
	if (*p & CIS_IRQ_PULSE) { /* Pulse triggered requests */
		FUNC1("%c Pulse", c);
		c = ',';
	}
	if (*p & CIS_IRQ_SHARING) /* Interrupt sharing */
		FUNC1("%c Shared", c);
	FUNC2('\n');

	/* IRQ mask values exist */
	if (*p & CIS_IRQ_MASK) {
		if (q - p < 3)
			goto err;
		i = FUNC3(p + 1); /* IRQ mask */
		FUNC1("\t\tIRQs: ");
		if (*p & 1)
			FUNC1(" NMI");
		if (*p & 0x2)
			FUNC1(" IOCK");
		if (*p & 0x4)
			FUNC1(" BERR");
		if (*p & 0x8)
			FUNC1(" VEND");
		for (j = 0; j < 16; j++)
			if (i & (1 << j))
				FUNC1(" %d", j);
		FUNC2('\n');
		p += 3;
	} else {
		FUNC1("\t\tIRQ level = %d\n", FUNC0(*p));
		p++;
	}
	return p;

 err:	/* warning */
	FUNC1("\tWrong length for IRQ sub-tuple\n");
	return p;
}