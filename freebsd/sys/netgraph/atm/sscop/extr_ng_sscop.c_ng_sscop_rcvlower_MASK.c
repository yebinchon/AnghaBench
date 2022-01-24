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
struct TYPE_2__ {int /*<<< orphan*/  in_dropped; int /*<<< orphan*/  in_packets; } ;
struct priv {TYPE_1__ stats; int /*<<< orphan*/  sscop; int /*<<< orphan*/ * upper; int /*<<< orphan*/  enabled; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct priv* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSCOP_IDLE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mbuf*) ; 

__attribute__((used)) static int
FUNC6(hook_p hook, item_p item)
{
	struct priv *priv = FUNC3(FUNC2(hook));
	struct mbuf *m;

	if (!priv->enabled) {
		FUNC1(item);
		return EINVAL;
	}

	/*
	 * If we are disconnected at the upper layer and in the IDLE
	 * state, drop any incoming packet.
	 */
	if (priv->upper != NULL || FUNC4(priv->sscop) != SSCOP_IDLE) {
		FUNC0(item, m);
		priv->stats.in_packets++;
		FUNC5(priv->sscop, m);
	} else {
		priv->stats.in_dropped++;
	}
	FUNC1(item);

	return (0);
}