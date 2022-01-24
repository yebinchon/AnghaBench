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
typedef  int /*<<< orphan*/  u_int ;
struct sbuf {int dummy; } ;
struct priv {scalar_t__ enabled; int /*<<< orphan*/  sscf; scalar_t__ lower; scalar_t__ upper; } ;
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 int FUNC5 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(node_p node, struct priv *priv, char *arg, u_int len)
{
	struct sbuf sbuf;

	FUNC6(&sbuf, arg, len, 0);

	if (priv->upper)
		FUNC7(&sbuf, "upper hook: %s connected to %s:%s\n",
		    FUNC0(priv->upper),
		    FUNC3(FUNC1(FUNC2(priv->upper))),
		    FUNC0(FUNC2(priv->upper)));
	else
		FUNC7(&sbuf, "upper hook: <not connected>\n");

	if (priv->lower)
		FUNC7(&sbuf, "lower hook: %s connected to %s:%s\n",
		    FUNC0(priv->lower),
		    FUNC3(FUNC1(FUNC2(priv->lower))),
		    FUNC0(FUNC2(priv->lower)));
	else
		FUNC7(&sbuf, "lower hook: <not connected>\n");

	FUNC7(&sbuf, "sscf state: %s\n",
	    priv->enabled == 0 ? "<disabled>" :
	    FUNC9(FUNC8(priv->sscf)));

	FUNC4(&sbuf);
	return (FUNC5(&sbuf));
}