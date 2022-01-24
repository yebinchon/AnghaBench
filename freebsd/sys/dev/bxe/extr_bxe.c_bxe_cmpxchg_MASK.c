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
 scalar_t__ FUNC0 (int volatile*,int,int) ; 

int
FUNC1(volatile int *addr,
            int          old,
            int          new)
{
    int x;
    do {
        x = *addr;
    } while (FUNC0(addr, old, new) == 0);
    return (x);
}