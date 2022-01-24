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
 int BLOCKSIZE ; 
 int RECORDSIZE ; 
 scalar_t__ block ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int offset ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	int tail = BLOCKSIZE - offset;
	FUNC0(block + offset, 0, tail);
	FUNC1(1, block, BLOCKSIZE);
	if (tail < 2 * RECORDSIZE) {
		FUNC0(block, 0, offset);
		FUNC1(1, block, BLOCKSIZE);
	}
}