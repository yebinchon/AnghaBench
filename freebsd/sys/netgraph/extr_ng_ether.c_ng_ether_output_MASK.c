#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_3__ {int /*<<< orphan*/ * upper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,struct mbuf*) ; 

__attribute__((used)) static int
FUNC5(struct ifnet *ifp, struct mbuf **mp)
{
	const node_p node = FUNC0(ifp);
	const priv_p priv = FUNC1(node);
	int error = 0;

	/* If "upper" hook not connected, let packet continue */
	if (priv->upper == NULL)
		return (0);

	/* Send it out "upper" hook */
	FUNC2();
	FUNC4(error, priv->upper, *mp);
	FUNC3();
	return (error);
}