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
typedef  scalar_t__ Linetype ;

/* Variables and functions */
 scalar_t__ LT_TRUE ; 
 scalar_t__ FUNC0 (long*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  strictlogic ; 

__attribute__((used)) static Linetype FUNC1(long *p, Linetype at, long a, Linetype bt, long b) {
	if (!strictlogic && (at == LT_TRUE || bt == LT_TRUE))
		return (*p = 1, LT_TRUE);
	return FUNC0(p, a || b, at, bt);
}