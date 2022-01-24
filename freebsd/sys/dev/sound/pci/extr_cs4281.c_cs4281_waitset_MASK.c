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
typedef  int u_int32_t ;
struct sc_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sc_info*,int) ; 

__attribute__((used)) static int
FUNC2(struct sc_info *sc, int regno, u_int32_t mask, int tries)
{
    u_int32_t v;

    while (tries > 0) {
	FUNC0(100);
	v = FUNC1(sc, regno);
	if ((v & mask) == mask) break;
	tries --;
    }
    return tries;
}