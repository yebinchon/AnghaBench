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
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int,int) ; 

__attribute__((used)) static void
FUNC1(struct sc_info *sc, int op, int z, int w, int x, int y,
    u_int32_t *pc)
{
	FUNC0(sc, (*pc) * 2, (x << 12) | y);
	FUNC0(sc, (*pc) * 2 + 1, (op << 24) | (z << 12) | w);
	(*pc)++;
}