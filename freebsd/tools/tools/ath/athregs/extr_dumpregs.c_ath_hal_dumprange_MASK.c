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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ah ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,int,...) ; 

__attribute__((used)) static void
FUNC2(FILE *fd, u_int a, u_int b)
{
	u_int r;

	for (r = a; r+16 <= b; r += 5*4)
		FUNC1(fd,
			"%04x %08x  %04x %08x  %04x %08x  %04x %08x  %04x %08x\n"
			, r, FUNC0(ah, r)
			, r+4, FUNC0(ah, r+4)
			, r+8, FUNC0(ah, r+8)
			, r+12, FUNC0(ah, r+12)
			, r+16, FUNC0(ah, r+16)
		);
	switch (b-r) {
	case 16:
		FUNC1(fd
			, "%04x %08x  %04x %08x  %04x %08x  %04x %08x\n"
			, r, FUNC0(ah, r)
			, r+4, FUNC0(ah, r+4)
			, r+8, FUNC0(ah, r+8)
			, r+12, FUNC0(ah, r+12)
		);
		break;
	case 12:
		FUNC1(fd, "%04x %08x  %04x %08x  %04x %08x\n"
			, r, FUNC0(ah, r)
			, r+4, FUNC0(ah, r+4)
			, r+8, FUNC0(ah, r+8)
		);
		break;
	case 8:
		FUNC1(fd, "%04x %08x  %04x %08x\n"
			, r, FUNC0(ah, r)
			, r+4, FUNC0(ah, r+4)
		);
		break;
	case 4:
		FUNC1(fd, "%04x %08x\n"
			, r, FUNC0(ah, r)
		);
		break;
	}
}