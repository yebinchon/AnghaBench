#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct ng_bridge_hent {TYPE_1__ host; } ;
struct ng_bridge_bucket {int dummy; } ;
typedef  TYPE_3__* priv_p ;
struct TYPE_6__ {int debugLevel; } ;
struct TYPE_7__ {int numHosts; int numBuckets; int hashMask; struct ng_bridge_bucket* tab; int /*<<< orphan*/  node; TYPE_2__ conf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int MAX_BUCKETS ; 
 int MIN_BUCKETS ; 
 int /*<<< orphan*/  M_NETGRAPH_BRIDGE ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct ng_bridge_bucket* const) ; 
 struct ng_bridge_hent* FUNC2 (struct ng_bridge_bucket* const) ; 
 int /*<<< orphan*/  FUNC3 (struct ng_bridge_bucket*,struct ng_bridge_hent* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ng_bridge_bucket* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ng_bridge_bucket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 struct ng_bridge_bucket* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(priv_p priv)
{
	struct ng_bridge_bucket *newTab;
	int oldBucket, newBucket;
	int newNumBuckets;
	u_int newMask;

	/* Is table too full or too empty? */
	if (priv->numHosts > priv->numBuckets
	    && (priv->numBuckets << 1) <= MAX_BUCKETS)
		newNumBuckets = priv->numBuckets << 1;
	else if (priv->numHosts < (priv->numBuckets >> 2)
	    && (priv->numBuckets >> 2) >= MIN_BUCKETS)
		newNumBuckets = priv->numBuckets >> 2;
	else
		return;
	newMask = newNumBuckets - 1;

	/* Allocate and initialize new table */
	newTab = FUNC7(newNumBuckets * sizeof(*newTab),
	    M_NETGRAPH_BRIDGE, M_NOWAIT | M_ZERO);
	if (newTab == NULL)
		return;

	/* Move all entries from old table to new table */
	for (oldBucket = 0; oldBucket < priv->numBuckets; oldBucket++) {
		struct ng_bridge_bucket *const oldList = &priv->tab[oldBucket];

		while (!FUNC1(oldList)) {
			struct ng_bridge_hent *const hent
			    = FUNC2(oldList);

			FUNC4(oldList, next);
			newBucket = FUNC0(hent->host.addr, newMask);
			FUNC3(&newTab[newBucket], hent, next);
		}
	}

	/* Replace old table with new one */
	if (priv->conf.debugLevel >= 3) {
		FUNC6(LOG_INFO, "ng_bridge: %s: table size %d -> %d\n",
		    FUNC8(priv->node),
		    priv->numBuckets, newNumBuckets);
	}
	FUNC5(priv->tab, M_NETGRAPH_BRIDGE);
	priv->numBuckets = newNumBuckets;
	priv->hashMask = newMask;
	priv->tab = newTab;
	return;
}