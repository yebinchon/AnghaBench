#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  node_p ;
typedef  TYPE_1__* ng_h4_info_p ;
struct TYPE_8__ {int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_7__ {TYPE_4__ outq; int /*<<< orphan*/  dying; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  M_NETGRAPH_H4 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(node_p node)
{
	ng_h4_info_p	sc = (ng_h4_info_p) FUNC2(node);

	FUNC0(sc);

	if (!sc->dying) {
		FUNC1(sc);

		FUNC3(node);	/* we will persist */

		return (EOPNOTSUPP);
	}

	FUNC1(sc);

	FUNC4(node, NULL);

	FUNC6(&sc->outq);

	FUNC5(node);
	FUNC9(&sc->outq.ifq_mtx);
	FUNC7(sc, sizeof(*sc));
	FUNC8(sc, M_NETGRAPH_H4);

	return (0);
}