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
struct ipoib_mcast {int backoff; int /*<<< orphan*/  pkt_queue; int /*<<< orphan*/  list; int /*<<< orphan*/  created; struct ipoib_dev_priv* priv; } ;
struct ipoib_dev_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jiffies ; 
 struct ipoib_mcast* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ipoib_mcast *FUNC3(struct ipoib_dev_priv *priv,
					     int can_sleep)
{
	struct ipoib_mcast *mcast;

	mcast = FUNC2(sizeof *mcast, can_sleep ? GFP_KERNEL : GFP_ATOMIC);
	if (!mcast)
		return NULL;

	mcast->priv = priv;
	mcast->created = jiffies;
	mcast->backoff = 1;

	FUNC0(&mcast->list);
	FUNC1(&mcast->pkt_queue, sizeof(mcast->pkt_queue));

	return mcast;
}