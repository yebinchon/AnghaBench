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
typedef  scalar_t__ u_int ;
struct sbuf {int dummy; } ;
struct priv {scalar_t__ uni; int /*<<< orphan*/ * upper; int /*<<< orphan*/ * lower; } ;
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNI_MAXFACILITY ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 int FUNC5 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,struct sbuf*) ; 

__attribute__((used)) static int
FUNC11(node_p node, struct priv *priv, char *buf, u_int len)
{
	struct sbuf sbuf;
	u_int f;

	FUNC6(&sbuf, buf, len, 0);

	if (priv->lower != NULL)
		FUNC7(&sbuf, "lower hook: connected to %s:%s\n",
		    FUNC3(FUNC1(FUNC2(priv->lower))),
		    FUNC0(FUNC2(priv->lower)));
	else
		FUNC7(&sbuf, "lower hook: <not connected>\n");

	if (priv->upper != NULL)
		FUNC7(&sbuf, "upper hook: connected to %s:%s\n",
		    FUNC3(FUNC1(FUNC2(priv->upper))),
		    FUNC0(FUNC2(priv->upper)));
	else
		FUNC7(&sbuf, "upper hook: <not connected>\n");

	FUNC7(&sbuf, "debugging:");
	for (f = 0; f < UNI_MAXFACILITY; f++)
		if (FUNC9(priv->uni, f) != 0)
			FUNC7(&sbuf, " %s=%u", FUNC8(f),
			    FUNC9(priv->uni, f));
	FUNC7(&sbuf, "\n");

	if (priv->uni)
		FUNC10(priv->uni, &sbuf);

	FUNC4(&sbuf);
	return (FUNC5(&sbuf));
}