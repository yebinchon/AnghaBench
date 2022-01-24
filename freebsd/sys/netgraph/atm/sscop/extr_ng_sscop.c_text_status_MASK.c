#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char* uintmax_t ;
typedef  int /*<<< orphan*/  u_int ;
struct sbuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ data_delivered; scalar_t__ errors; scalar_t__ maa_dropped; scalar_t__ maa_signals; scalar_t__ aa_dropped; scalar_t__ aa_signals; scalar_t__ out_dropped; scalar_t__ out_packets; scalar_t__ in_dropped; scalar_t__ in_packets; } ;
struct priv {int /*<<< orphan*/  sscop; TYPE_1__ stats; int /*<<< orphan*/  enabled; scalar_t__ manage; scalar_t__ lower; scalar_t__ upper; } ;
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
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(node_p node, struct priv *priv, char *arg, u_int len)
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

	if (priv->manage)
		FUNC7(&sbuf, "manage hook: %s connected to %s:%s\n",
		    FUNC0(priv->manage),
		    FUNC3(FUNC1(FUNC2(priv->manage))),
		    FUNC0(FUNC2(priv->manage)));
	else
		FUNC7(&sbuf, "manage hook: <not connected>\n");

	FUNC7(&sbuf, "sscop state: %s\n",
	    !priv->enabled ? "<disabled>" :
	    FUNC9(FUNC8(priv->sscop)));

	FUNC7(&sbuf, "input packets:  %ju\n",
	    (uintmax_t)priv->stats.in_packets);
	FUNC7(&sbuf, "input dropped:  %ju\n",
	    (uintmax_t)priv->stats.in_dropped);
	FUNC7(&sbuf, "output packets: %ju\n",
	    (uintmax_t)priv->stats.out_packets);
	FUNC7(&sbuf, "output dropped: %ju\n",
	    (uintmax_t)priv->stats.out_dropped);
	FUNC7(&sbuf, "aa signals:     %ju\n",
	    (uintmax_t)priv->stats.aa_signals);
	FUNC7(&sbuf, "aa dropped:     %ju\n",
	    (uintmax_t)priv->stats.aa_dropped);
	FUNC7(&sbuf, "maa signals:    %ju\n",
	    (uintmax_t)priv->stats.maa_signals);
	FUNC7(&sbuf, "maa dropped:    %ju\n",
	    (uintmax_t)priv->stats.maa_dropped);
	FUNC7(&sbuf, "errors:         %ju\n",
	    (uintmax_t)priv->stats.errors);
	FUNC7(&sbuf, "data delivered: %ju\n",
	    (uintmax_t)priv->stats.data_delivered);
	FUNC7(&sbuf, "window:         %u\n",
	    FUNC10(priv->sscop, 0));

	FUNC4(&sbuf);
	return (FUNC5(&sbuf));
}