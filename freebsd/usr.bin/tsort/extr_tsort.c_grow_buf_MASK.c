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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 void* FUNC1 (void*,size_t) ; 

__attribute__((used)) static void *
FUNC2(void *bp, size_t size)
{
	if ((bp = FUNC1(bp, size)) == NULL)
		FUNC0(1, NULL);
	return (bp);
}