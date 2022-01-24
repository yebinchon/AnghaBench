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
typedef  int UWORD ;
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

int FUNC3(void)
{
    UBYTE *area, *ptr;
    UWORD i;

    area = FUNC0(SIZE);
    
    /* Write one bit pattern... */
    FUNC1(area, 0x55U, SIZE);

    /* And another... */
    FUNC1(area, 0xAAU, SIZE);

    /* See if it worked */
    ptr = area;
    for (i=0; i<SIZE; i++) {
	if (*(ptr++) != 0xAAU) {
	    FUNC2("Failed at offset %lx\n", i);
	}
	if (!((UBYTE)i)) {
	    FUNC2("At %lx\r", i);
	}
    }

    /* Dump around the end */
    ptr = area + SIZE - 16;
    FUNC2("\nAt end: \n");
    for (i=0; i<32; i++) {
	FUNC2("%lx: %x\n", (UWORD)((UWORD)&ptr[i] - (UWORD)area - SIZE), ptr[i]);
    }
    FUNC2("\n");
}