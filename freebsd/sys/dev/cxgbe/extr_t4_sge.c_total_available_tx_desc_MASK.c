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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ u_int ;
struct sge_eq {scalar_t__ pidx; int /*<<< orphan*/  sidx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sge_eq*) ; 

__attribute__((used)) static inline u_int
FUNC2(struct sge_eq *eq)
{
	uint16_t hw_cidx, pidx;

	hw_cidx = FUNC1(eq);
	pidx = eq->pidx;

	if (pidx == hw_cidx)
		return (eq->sidx - 1);
	else
		return (FUNC0(hw_cidx, pidx, eq->sidx) - 1);
}