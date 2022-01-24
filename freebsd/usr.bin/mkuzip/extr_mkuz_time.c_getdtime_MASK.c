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
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 double FUNC1 (struct timespec*) ; 

double
FUNC2(void)
{
    struct timespec tp;

    if (FUNC0(CLOCK_MONOTONIC, &tp) == -1)
        return (-1);

    return FUNC1(&tp);
}