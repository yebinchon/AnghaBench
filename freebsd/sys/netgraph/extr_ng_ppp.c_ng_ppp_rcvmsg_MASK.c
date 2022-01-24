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
typedef  int uint16_t ;
struct ng_ppp_node_conf {int /*<<< orphan*/ * links; int /*<<< orphan*/  bund; } ;
struct ng_ppp_mp_state {int /*<<< orphan*/  dropFragments; int /*<<< orphan*/  dupFragments; int /*<<< orphan*/  runts; int /*<<< orphan*/  badProtos; int /*<<< orphan*/  recvOctets; int /*<<< orphan*/  recvFrames; int /*<<< orphan*/  xmitOctets; int /*<<< orphan*/  xmitFrames; int /*<<< orphan*/  xseq; int /*<<< orphan*/  mseq; int /*<<< orphan*/ * rseq; } ;
struct ng_ppp_link_stat64 {int /*<<< orphan*/  dropFragments; int /*<<< orphan*/  dupFragments; int /*<<< orphan*/  runts; int /*<<< orphan*/  badProtos; int /*<<< orphan*/  recvOctets; int /*<<< orphan*/  recvFrames; int /*<<< orphan*/  xmitOctets; int /*<<< orphan*/  xmitFrames; int /*<<< orphan*/  xseq; int /*<<< orphan*/  mseq; int /*<<< orphan*/ * rseq; } ;
struct ng_ppp_link_stat {int /*<<< orphan*/  dropFragments; int /*<<< orphan*/  dupFragments; int /*<<< orphan*/  runts; int /*<<< orphan*/  badProtos; int /*<<< orphan*/  recvOctets; int /*<<< orphan*/  recvFrames; int /*<<< orphan*/  xmitOctets; int /*<<< orphan*/  xmitFrames; } ;
struct TYPE_6__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {TYPE_2__ header; scalar_t__ data; } ;
typedef  TYPE_3__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_7__ {int /*<<< orphan*/ * hooks; TYPE_1__* links; struct ng_ppp_mp_state bundleStats; int /*<<< orphan*/  xseq; int /*<<< orphan*/  mseq; int /*<<< orphan*/  conf; } ;
struct TYPE_5__ {struct ng_ppp_mp_state stats; int /*<<< orphan*/  seq; int /*<<< orphan*/  conf; } ;
typedef  struct ng_mesg* NGI_MSG ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t HOOK_INDEX_VJC_IP ; 
 int /*<<< orphan*/  MP_NOSEQ ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_PPP_CLR_LINK_STATS 137 
#define  NGM_PPP_COOKIE 136 
#define  NGM_PPP_GETCLR_LINK_STATS 135 
#define  NGM_PPP_GETCLR_LINK_STATS64 134 
#define  NGM_PPP_GET_CONFIG 133 
#define  NGM_PPP_GET_LINK_STATS 132 
#define  NGM_PPP_GET_LINK_STATS64 131 
#define  NGM_PPP_GET_MP_STATE 130 
#define  NGM_PPP_SET_CONFIG 129 
#define  NGM_VJC_COOKIE 128 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct ng_mesg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int NG_PPP_BUNDLE_LINKNUM ; 
 int NG_PPP_MAX_LINKS ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC7 (struct ng_ppp_mp_state*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ng_ppp_mp_state*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ng_ppp_node_conf* const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC11(node_p node, item_p item, hook_p lasthook)
{
	const priv_p priv = FUNC5(node);
	struct ng_mesg *resp = NULL;
	int error = 0;
	struct ng_mesg *msg;

	FUNC1(item, msg);
	switch (msg->header.typecookie) {
	case NGM_PPP_COOKIE:
		switch (msg->header.cmd) {
		case NGM_PPP_SET_CONFIG:
		    {
			struct ng_ppp_node_conf *const conf =
			    (struct ng_ppp_node_conf *)msg->data;
			int i;

			/* Check for invalid or illegal config */
			if (msg->header.arglen != sizeof(*conf))
				FUNC0(EINVAL);
			if (!FUNC9(node, conf))
				FUNC0(EINVAL);

			/* Copy config */
			priv->conf = conf->bund;
			for (i = 0; i < NG_PPP_MAX_LINKS; i++)
				priv->links[i].conf = conf->links[i];
			FUNC10(node, 1);
			break;
		    }
		case NGM_PPP_GET_CONFIG:
		    {
			struct ng_ppp_node_conf *conf;
			int i;

			FUNC4(resp, msg, sizeof(*conf), M_NOWAIT);
			if (resp == NULL)
				FUNC0(ENOMEM);
			conf = (struct ng_ppp_node_conf *)resp->data;
			conf->bund = priv->conf;
			for (i = 0; i < NG_PPP_MAX_LINKS; i++)
				conf->links[i] = priv->links[i].conf;
			break;
		    }
		case NGM_PPP_GET_MP_STATE:
		    {
			struct ng_ppp_mp_state *info;
			int i;

			FUNC4(resp, msg, sizeof(*info), M_NOWAIT);
			if (resp == NULL)
				FUNC0(ENOMEM);
			info = (struct ng_ppp_mp_state *)resp->data;
			FUNC8(info, sizeof(*info));
			for (i = 0; i < NG_PPP_MAX_LINKS; i++) {
				if (priv->links[i].seq != MP_NOSEQ)
					info->rseq[i] = priv->links[i].seq;
			}
			info->mseq = priv->mseq;
			info->xseq = priv->xseq;
			break;
		    }
		case NGM_PPP_GET_LINK_STATS:
		case NGM_PPP_CLR_LINK_STATS:
		case NGM_PPP_GETCLR_LINK_STATS:
		case NGM_PPP_GET_LINK_STATS64:
		case NGM_PPP_GETCLR_LINK_STATS64:
		    {
			struct ng_ppp_link_stat64 *stats;
			uint16_t linkNum;

			/* Process request. */
			if (msg->header.arglen != sizeof(uint16_t))
				FUNC0(EINVAL);
			linkNum = *((uint16_t *) msg->data);
			if (linkNum >= NG_PPP_MAX_LINKS
			    && linkNum != NG_PPP_BUNDLE_LINKNUM)
				FUNC0(EINVAL);
			stats = (linkNum == NG_PPP_BUNDLE_LINKNUM) ?
			    &priv->bundleStats : &priv->links[linkNum].stats;

			/* Make 64bit reply. */
			if (msg->header.cmd == NGM_PPP_GET_LINK_STATS64 ||
			    msg->header.cmd == NGM_PPP_GETCLR_LINK_STATS64) {
				FUNC4(resp, msg,
				    sizeof(struct ng_ppp_link_stat64), M_NOWAIT);
				if (resp == NULL)
					FUNC0(ENOMEM);
				FUNC7(stats, resp->data, sizeof(*stats));
			} else
			/* Make 32bit reply. */
			if (msg->header.cmd == NGM_PPP_GET_LINK_STATS ||
			    msg->header.cmd == NGM_PPP_GETCLR_LINK_STATS) {
				struct ng_ppp_link_stat *rs;
				FUNC4(resp, msg,
				    sizeof(struct ng_ppp_link_stat), M_NOWAIT);
				if (resp == NULL)
					FUNC0(ENOMEM);
				rs = (struct ng_ppp_link_stat *)resp->data;
				/* Truncate 64->32 bits. */
				rs->xmitFrames = stats->xmitFrames;
				rs->xmitOctets = stats->xmitOctets;
				rs->recvFrames = stats->recvFrames;
				rs->recvOctets = stats->recvOctets;
				rs->badProtos = stats->badProtos;
				rs->runts = stats->runts;
				rs->dupFragments = stats->dupFragments;
				rs->dropFragments = stats->dropFragments;
			}
			/* Clear stats. */
			if (msg->header.cmd != NGM_PPP_GET_LINK_STATS &&
			    msg->header.cmd != NGM_PPP_GET_LINK_STATS64)
				FUNC8(stats, sizeof(*stats));
			break;
		    }
		default:
			error = EINVAL;
			break;
		}
		break;
	case NGM_VJC_COOKIE:
	    {
		/*
		 * Forward it to the vjc node. leave the
		 * old return address alone.
		 * If we have no hook, let NG_RESPOND_MSG
		 * clean up any remaining resources.
		 * Because we have no resp, the item will be freed
		 * along with anything it references. Don't
		 * let msg be freed twice.
		 */
		NGI_MSG(item) = msg;	/* put it back in the item */
		msg = NULL;
		if ((lasthook = priv->hooks[HOOK_INDEX_VJC_IP])) {
			FUNC3(error, item, lasthook);
		}
		return (error);
	    }
	default:
		error = EINVAL;
		break;
	}
done:
	FUNC6(error, node, item, resp);
	FUNC2(msg);
	return (error);
}