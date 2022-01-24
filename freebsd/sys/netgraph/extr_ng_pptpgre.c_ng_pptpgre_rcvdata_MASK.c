#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  item_p ;
typedef  TYPE_2__* hpriv_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {int /*<<< orphan*/  enabled; } ;
struct TYPE_6__ {int /*<<< orphan*/  mtx; TYPE_1__ conf; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(hook_p hook, item_p item)
{
	const hpriv_p hpriv = FUNC1(hook);
	int rval;

	/* If not configured, reject */
	if (!hpriv->conf.enabled) {
		FUNC0(item);
		return (ENXIO);
	}

	FUNC3(&hpriv->mtx);

	rval = FUNC4(hpriv, item);

	FUNC2(&hpriv->mtx, MA_NOTOWNED);

	return (rval);
}