#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct ngsock {int hmask; int /*<<< orphan*/ * hash; } ;
struct hookpriv {int /*<<< orphan*/  hook; } ;
typedef  TYPE_1__* node_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {int nd_numhooks; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HASHINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct hookpriv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_SOCK ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hookpriv*) ; 
 struct ngsock* FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 struct hookpriv* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(node_p node, hook_p hook, const char *name)
{
	struct ngsock *const priv = FUNC2(node);
	struct hookpriv *hp;
	uint32_t h;

	hp = FUNC4(sizeof(*hp), M_NETGRAPH_SOCK, M_NOWAIT);
	if (hp == NULL)
		return (ENOMEM);
	if (node->nd_numhooks * 2 > priv->hmask)
		FUNC5(node);
	hp->hook = hook;
	h = FUNC3(name, HASHINIT) & priv->hmask;
	FUNC0(&priv->hash[h], hp, next);
	FUNC1(hook, hp);

	return (0);
}