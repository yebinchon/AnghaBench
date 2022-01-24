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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *,int) ; 

void
FUNC2(uint16_t dw, unsigned char *fourchar)
{
	uint16_t le, be;
#if BYTE_ORDER == LITTLE_ENDIAN
	le = dw;
	be = FUNC0(dw);
#endif
#if BYTE_ORDER == BIG_ENDIAN
	be = dw;
	le = FUNC0(dw);
#endif
	FUNC1(fourchar, &le, 2);
	FUNC1((fourchar+2), &be, 2);
}