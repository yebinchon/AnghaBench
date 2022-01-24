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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(void *buf, int size, int data_only, int offset)
{
	__be32 *p = buf;
	int i;

	for (i = 0; i < size; i += 16) {
		FUNC1("%03x: %08x %08x %08x %08x\n", offset, FUNC0(p[0]),
			 FUNC0(p[1]), FUNC0(p[2]),
			 FUNC0(p[3]));
		p += 4;
		offset += 16;
	}
	if (!data_only)
		FUNC1("\n");
}