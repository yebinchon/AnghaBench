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
struct priv {int /*<<< orphan*/ * sscf; } ;
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_NG_SSCFU ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*,int /*<<< orphan*/ ) ; 
 struct priv* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sscfu_funcs ; 

__attribute__((used)) static int
FUNC4(node_p node)
{
	struct priv *priv;

	priv = FUNC2(sizeof(*priv), M_NG_SSCFU, M_WAITOK | M_ZERO);

	if ((priv->sscf = FUNC3(node, &sscfu_funcs)) == NULL) {
		FUNC1(priv, M_NG_SSCFU);
		return (ENOMEM);
	}

	FUNC0(node, priv);

	return (0);
}