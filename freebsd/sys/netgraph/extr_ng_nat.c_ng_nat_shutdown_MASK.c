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
struct ng_nat_rdr_lst {int /*<<< orphan*/  lib; int /*<<< orphan*/  redirhead; } ;
typedef  struct ng_nat_rdr_lst* priv_p ;
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH ; 
 struct ng_nat_rdr_lst* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ng_nat_rdr_lst* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC7 (struct ng_nat_rdr_lst* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(node_p node)
{
	const priv_p priv = FUNC1(node);

	FUNC2(node, NULL);
	FUNC3(node);

	/* Free redirects list. */
	while (!FUNC4(&priv->redirhead)) {
		struct ng_nat_rdr_lst *entry = FUNC5(&priv->redirhead);
		FUNC6(&priv->redirhead, entries);
		FUNC7(entry, M_NETGRAPH);
	}

	/* Final free. */
	FUNC0(priv->lib);
	FUNC7(priv, M_NETGRAPH);

	return (0);
}