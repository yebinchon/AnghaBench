#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union ib_gid {int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_int ;
struct sockaddr_dl {int sdl_alen; } ;
struct ipoib_mcast_ctx {int /*<<< orphan*/  remove_list; struct ipoib_dev_priv* priv; } ;
struct TYPE_4__ {union ib_gid mgid; } ;
struct ipoib_mcast {int /*<<< orphan*/  flags; int /*<<< orphan*/  list; int /*<<< orphan*/  rb_node; TYPE_2__ mcmember; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  multicast_list; int /*<<< orphan*/  multicast_tree; int /*<<< orphan*/  port; int /*<<< orphan*/  ca; int /*<<< orphan*/  flags; TYPE_1__* dev; } ;
struct ib_sa_mcmember_rec {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_broadcastaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_FLAG_UMCAST ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_FOUND ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_SENDONLY ; 
 int /*<<< orphan*/ * FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,struct ipoib_mcast*) ; 
 struct ipoib_mcast* FUNC2 (struct ipoib_dev_priv*,union ib_gid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ib_gid*,struct ib_sa_mcmember_rec*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct ipoib_mcast* FUNC6 (struct ipoib_dev_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u_int
FUNC14(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	struct ipoib_mcast_ctx *ctx = arg;
	struct ipoib_dev_priv *priv = ctx->priv;
	struct ipoib_mcast *mcast;
	struct ib_sa_mcmember_rec rec;
	union ib_gid mgid;
	uint8_t *addr;
	int addrlen;

	addr = FUNC0(sdl);
	addrlen = sdl->sdl_alen;
	if (!FUNC5(addr, addrlen,
	    priv->dev->if_broadcastaddr))
		return (0);

	FUNC10(mgid.raw, addr + 4, sizeof mgid);

	mcast = FUNC2(priv, &mgid);
	if (!mcast || FUNC13(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags)) {
		struct ipoib_mcast *nmcast;

		/* ignore group which is directly joined by userspace */
		if (FUNC13(IPOIB_FLAG_UMCAST, &priv->flags) &&
		    !FUNC3(priv->ca, priv->port, &mgid, &rec)) {
			FUNC4(priv, "ignoring multicast entry for mgid %16D\n",
					mgid.raw, ":");
			return (0);
		}

		/* Not found or send-only group, let's add a new entry */
		FUNC4(priv, "adding multicast entry for mgid %16D\n",
				mgid.raw, ":");

		nmcast = FUNC6(priv, 0);
		if (!nmcast) {
			FUNC7(priv, "unable to allocate memory for multicast structure\n");
			return (0);
		}

		FUNC12(IPOIB_MCAST_FLAG_FOUND, &nmcast->flags);

		nmcast->mcmember.mgid = mgid;

		if (mcast) {
			/* Destroy the send only entry */
			FUNC9(&mcast->list, &ctx->remove_list);

			FUNC11(&mcast->rb_node,
					&nmcast->rb_node,
					&priv->multicast_tree);
		} else
			FUNC1(priv, nmcast);

		FUNC8(&nmcast->list, &priv->multicast_list);
	}

	if (mcast)
		FUNC12(IPOIB_MCAST_FLAG_FOUND, &mcast->flags);

	return (1);
}