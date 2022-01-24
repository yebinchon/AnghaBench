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
struct TYPE_5__ {int bandwidth; scalar_t__ latency; scalar_t__ enableLink; scalar_t__ enableProtoComp; scalar_t__ enableACFComp; } ;
struct ng_ppp_link {scalar_t__ latency; void* seq; int* lastWrite; scalar_t__ bytesInQueue; TYPE_1__ conf; int /*<<< orphan*/ * hook; } ;
typedef  TYPE_3__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_6__ {scalar_t__ enableMultilink; int enableIP; scalar_t__ enableCompression; scalar_t__ enableEncryption; scalar_t__ enableVJCompression; scalar_t__ xmitShortSeq; } ;
struct TYPE_7__ {int vjCompHooked; int* activeLinks; int numActiveLinks; int allLinksEqual; int /*<<< orphan*/ ** hooks; TYPE_2__ conf; struct ng_ppp_link* links; void* mseq; void* xseq; } ;

/* Variables and functions */
 size_t HOOK_INDEX_INET ; 
 size_t HOOK_INDEX_VJC_COMP ; 
 size_t HOOK_INDEX_VJC_IP ; 
 size_t HOOK_INDEX_VJC_UNCOMP ; 
 size_t HOOK_INDEX_VJC_VJIP ; 
 int MP_AVERAGE_LINK_OVERHEAD ; 
 void* MP_INITIAL_SEQ ; 
 void* MP_NOSEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int NG_PPP_MAX_LINKS ; 
 int /*<<< orphan*/  FUNC2 (int**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ng_ppp_rcvdata_inet ; 
 int /*<<< orphan*/  ng_ppp_rcvdata_inet_fast ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(node_p node, int newConf)
{
	const priv_p priv = FUNC1(node);
	int i;

	/* Update active status for VJ Compression */
	priv->vjCompHooked = priv->hooks[HOOK_INDEX_VJC_IP] != NULL
	    && priv->hooks[HOOK_INDEX_VJC_COMP] != NULL
	    && priv->hooks[HOOK_INDEX_VJC_UNCOMP] != NULL
	    && priv->hooks[HOOK_INDEX_VJC_VJIP] != NULL;

	/* Increase latency for each link an amount equal to one MP header */
	if (newConf) {
		for (i = 0; i < NG_PPP_MAX_LINKS; i++) {
			int hdrBytes;

			if (priv->links[i].conf.bandwidth == 0)
			    continue;

			hdrBytes = MP_AVERAGE_LINK_OVERHEAD
			    + (priv->links[i].conf.enableACFComp ? 0 : 2)
			    + (priv->links[i].conf.enableProtoComp ? 1 : 2)
			    + (priv->conf.xmitShortSeq ? 2 : 4);
			priv->links[i].latency =
			    priv->links[i].conf.latency +
			    (hdrBytes / priv->links[i].conf.bandwidth + 50) / 100;
		}
	}

	/* Update list of active links */
	FUNC2(&priv->activeLinks, sizeof(priv->activeLinks));
	priv->numActiveLinks = 0;
	priv->allLinksEqual = 1;
	for (i = 0; i < NG_PPP_MAX_LINKS; i++) {
		struct ng_ppp_link *const link = &priv->links[i];

		/* Is link active? */
		if (link->conf.enableLink && link->hook != NULL) {
			struct ng_ppp_link *link0;

			/* Add link to list of active links */
			priv->activeLinks[priv->numActiveLinks++] = i;
			link0 = &priv->links[priv->activeLinks[0]];

			/* Determine if all links are still equal */
			if (link->latency != link0->latency
			  || link->conf.bandwidth != link0->conf.bandwidth)
				priv->allLinksEqual = 0;

			/* Initialize rec'd sequence number */
			if (link->seq == MP_NOSEQ) {
				link->seq = (link == link0) ?
				    MP_INITIAL_SEQ : link0->seq;
			}
		} else
			link->seq = MP_NOSEQ;
	}

	/* Update MP state as multi-link is active or not */
	if (priv->conf.enableMultilink && priv->numActiveLinks > 0)
		FUNC4(node);
	else {
		FUNC5(node);
		FUNC3(node);
		priv->xseq = MP_INITIAL_SEQ;
		priv->mseq = MP_INITIAL_SEQ;
		for (i = 0; i < NG_PPP_MAX_LINKS; i++) {
			struct ng_ppp_link *const link = &priv->links[i];

			FUNC2(&link->lastWrite, sizeof(link->lastWrite));
			link->bytesInQueue = 0;
			link->seq = MP_NOSEQ;
		}
	}

	if (priv->hooks[HOOK_INDEX_INET] != NULL) {
		if (priv->conf.enableIP == 1 &&
		    priv->numActiveLinks == 1 &&
		    priv->conf.enableMultilink == 0 &&
		    priv->conf.enableCompression == 0 &&
		    priv->conf.enableEncryption == 0 &&
		    priv->conf.enableVJCompression == 0)
			FUNC0(priv->hooks[HOOK_INDEX_INET],
			    ng_ppp_rcvdata_inet_fast);
		else
			FUNC0(priv->hooks[HOOK_INDEX_INET],
			    ng_ppp_rcvdata_inet);
	}
}