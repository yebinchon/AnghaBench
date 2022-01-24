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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(void *ptr, int onoff)
{
	int bit;
	uint16_t a;

	bit = *(int *)ptr;
	if (bit < 0) {
		bit = -bit;
		onoff = !onoff;
	}

	a = FUNC1(0x5140000c);
	if (bit >= 16) {
		a += 0x80;
		bit -= 16;
	}

	if (onoff)
		FUNC0(a, 1 << bit);
	else
		FUNC0(a, 1 << (bit + 16));
}