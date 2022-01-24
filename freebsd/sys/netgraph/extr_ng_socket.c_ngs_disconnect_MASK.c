#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ngsock {int flags; TYPE_2__* datasock; } ;
struct hookpriv {int dummy; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_4__ {TYPE_1__* ng_socket; } ;
struct TYPE_3__ {int /*<<< orphan*/  so_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hookpriv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_SOCK ; 
 int NGS_FLAG_NOLINGER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hookpriv* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct ngsock* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SS_ISCONNECTED ; 
 int /*<<< orphan*/  FUNC6 (struct hookpriv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(hook_p hook)
{
	node_p node = FUNC1(hook);
	struct ngsock *const priv = FUNC5(node);
	struct hookpriv *hp = FUNC2(hook);

	FUNC0(hp, next);
	FUNC6(hp, M_NETGRAPH_SOCK);

	if ((priv->datasock) && (priv->datasock->ng_socket)) {
		if (FUNC4(node) == 1)
			priv->datasock->ng_socket->so_state |= SS_ISCONNECTED;
		else
			priv->datasock->ng_socket->so_state &= ~SS_ISCONNECTED;
	}

	if ((priv->flags & NGS_FLAG_NOLINGER) &&
	    (FUNC4(node) == 0) && (FUNC3(node)))
		FUNC7(node);

	return (0);
}