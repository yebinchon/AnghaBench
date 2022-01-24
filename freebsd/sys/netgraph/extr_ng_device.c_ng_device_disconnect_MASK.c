#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_6__ {int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_5__ {int /*<<< orphan*/  unit; TYPE_4__ readq; int /*<<< orphan*/  ngd_mtx; int /*<<< orphan*/  ngddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  M_NETGRAPH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngd_unit ; 

__attribute__((used)) static int
FUNC8(hook_p hook)
{
	priv_p priv = FUNC2(FUNC1(hook));

	DBG;

	FUNC3(priv->ngddev);
	FUNC6(&priv->ngd_mtx);

	FUNC0(&priv->readq);
	FUNC6(&(priv)->readq.ifq_mtx);

	FUNC5(ngd_unit, priv->unit);

	FUNC4(priv, M_NETGRAPH);

	FUNC7(FUNC1(hook));

	return(0);
}