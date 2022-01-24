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
struct timecounter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static u_int
FUNC1(struct timecounter *tc)
{
    u_int u1, u2, u3;

    u2 = FUNC0();
    u3 = FUNC0();
    do {
	u1 = u2;
	u2 = u3;
	u3 = FUNC0();
    } while (u1 > u2 || u2 > u3);

    return (u2);
}