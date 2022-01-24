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
 int FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(int size)
{
	int hashsize;

	/*
	 * auto tune.
	 * get the next power of 2 higher than maxsockets.
	 */
	hashsize = 1 << FUNC0(size);
	/* catch overflow, and just go one power of 2 smaller */
	if (hashsize < size) {
		hashsize = 1 << (FUNC0(size) - 1);
	}
	return (hashsize);
}