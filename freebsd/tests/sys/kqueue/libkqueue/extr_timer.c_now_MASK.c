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
struct timeval {long tv_usec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC2(void)
{
    struct timeval tv;

    FUNC1(&tv, NULL);
    return FUNC0(tv.tv_sec) + tv.tv_usec;
}