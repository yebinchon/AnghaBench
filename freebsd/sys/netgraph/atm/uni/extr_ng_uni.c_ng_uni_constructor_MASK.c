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
struct priv {int /*<<< orphan*/ * uni; } ;
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_NG_UNI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct priv*,int /*<<< orphan*/ ) ; 
 struct priv* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uni_funcs ; 

__attribute__((used)) static int
FUNC5(node_p node)
{
	struct priv *priv;

	priv = FUNC3(sizeof(*priv), M_NG_UNI, M_WAITOK | M_ZERO);

	if ((priv->uni = FUNC4(node, &uni_funcs)) == NULL) {
		FUNC2(priv, M_NG_UNI);
		return (ENOMEM);
	}

	FUNC1(node, priv);
	FUNC0(node);

	return (0);
}