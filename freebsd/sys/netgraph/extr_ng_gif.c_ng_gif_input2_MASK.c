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
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_3__ {int /*<<< orphan*/  lower; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct mbuf*) ; 
 int FUNC2 (struct mbuf**,int) ; 

__attribute__((used)) static void
FUNC3(node_p node, struct mbuf **mp, int af)
{
	const priv_p priv = FUNC0(node);
	int error;

	/* Glue address family on */
	if ((error = FUNC2(mp, af)) != 0)
		return;

	/* Send out lower/orphan hook */
	FUNC1(error, priv->lower, *mp);
	*mp = NULL;
}