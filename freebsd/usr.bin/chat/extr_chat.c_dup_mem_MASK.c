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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 

void *
FUNC3(void *b, size_t c)
{
    void *ans = FUNC1 (c);
    if (!ans)
	FUNC0(2, "memory error!");

    FUNC2 (ans, b, c);
    return ans;
}