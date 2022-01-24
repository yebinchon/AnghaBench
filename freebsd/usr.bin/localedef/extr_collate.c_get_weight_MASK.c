#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pri; int opt; } ;
typedef  TYPE_1__ weight_t ;
typedef  int int32_t ;

/* Variables and functions */
 int COLLATE_SUBST_PRIORITY ; 
 int /*<<< orphan*/  INTERR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * weights ; 

int32_t
FUNC2(int32_t ref, int pass)
{
	weight_t	srch;
	weight_t	*w;
	int32_t		pri;

	pri = FUNC1(ref);
	if (pri & COLLATE_SUBST_PRIORITY) {
		return (pri);
	}
	if (pri <= 0) {
		return (pri);
	}
	srch.pri = pri;
	if ((w = FUNC0(weights, &weights[pass], &srch)) == NULL) {
		INTERR;
		return (-1);
	}
	return (w->opt);
}