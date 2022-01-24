#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {int /*<<< orphan*/  if_vnet; } ;
struct TYPE_4__ {TYPE_2__* ifp; int /*<<< orphan*/  link_status; int /*<<< orphan*/ * ether; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFM_ACTIVE ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(hook_p hook)
{
	const priv_p priv = FUNC3(FUNC2(hook));

	priv->ether = NULL;
	priv->link_status &= ~IFM_ACTIVE;
	FUNC1(priv->ifp->if_vnet);
	FUNC4(priv->ifp, LINK_STATE_DOWN);
	FUNC0();
	return (0);
}