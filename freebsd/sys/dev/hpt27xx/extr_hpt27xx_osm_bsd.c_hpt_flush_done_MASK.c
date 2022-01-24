#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ priv; int /*<<< orphan*/  Result; TYPE_4__* target; } ;
struct TYPE_11__ {TYPE_1__* transform; } ;
struct TYPE_12__ {TYPE_2__ array; } ;
struct TYPE_13__ {TYPE_3__ u; int /*<<< orphan*/  type; } ;
struct TYPE_10__ {TYPE_4__* target; } ;
typedef  TYPE_4__* PVDEV ;
typedef  TYPE_5__* PCOMMAND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  RETURN_PENDING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC4(PCOMMAND pCmd)
{
	PVDEV vd = pCmd->target;

	if (FUNC1(vd->type) && vd->u.array.transform && vd!=vd->u.array.transform->target) {
		vd = vd->u.array.transform->target;
		FUNC0(vd);
		pCmd->target = vd;
		pCmd->Result = RETURN_PENDING;
		FUNC2(pCmd);
		return;
	}

	*(int *)pCmd->priv = 1;
	FUNC3(pCmd);
}