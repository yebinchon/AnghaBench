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
struct sscop {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  out_packets; int /*<<< orphan*/  out_dropped; } ;
struct priv {int /*<<< orphan*/ * lower; TYPE_1__ stats; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 struct priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC3(struct sscop *sscop, void *p, struct mbuf *m)
{
	node_p node = (node_p)p;
	struct priv *priv = FUNC0(node);
	int error;

	if (priv->lower == NULL) {
		FUNC2(m);
		priv->stats.out_dropped++;
		return;
	}

	priv->stats.out_packets++;
	FUNC1(error, priv->lower, m);
}