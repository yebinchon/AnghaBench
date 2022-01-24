#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct in_multi_head {int dummy; } ;
struct in_multi {scalar_t__ inm_refcount; TYPE_1__* inm_ifma; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ifma_protospec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct in_multi_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_multi_head*,struct in_multi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct in_multi*) ; 
 int /*<<< orphan*/  inm_nrele ; 
 int /*<<< orphan*/  FUNC5 (struct in_multi_head*) ; 

void
FUNC6(struct in_multi *inm)
{
	struct in_multi_head tmp;

	FUNC0();
	FUNC1(inm->inm_refcount > 0);
	if (--inm->inm_refcount == 0) {
		FUNC2(&tmp);
		FUNC4(inm);
		inm->inm_ifma->ifma_protospec = NULL;
		FUNC3(&tmp, inm, inm_nrele);
		FUNC5(&tmp);
	}
}