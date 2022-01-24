#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ng_mppc_config {int bits; int /*<<< orphan*/ * startkey; int /*<<< orphan*/  enable; } ;
struct ng_mppc_dir {int /*<<< orphan*/  flushed; int /*<<< orphan*/  cc; int /*<<< orphan*/  key; int /*<<< orphan*/  rc4; int /*<<< orphan*/ * history; struct ng_mppc_config cfg; } ;
struct TYPE_4__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {int /*<<< orphan*/  ctrlnode; struct ng_mppc_dir recv; struct ng_mppc_dir xmit; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int MPPC_BIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int MPPC_VALID_BITS ; 
 int MPPE_40 ; 
 int MPPE_56 ; 
 int MPPE_BITS ; 
 int /*<<< orphan*/  M_NETGRAPH_MPPC ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  NGM_MPPC_CONFIG_COMP 131 
#define  NGM_MPPC_CONFIG_DECOMP 130 
#define  NGM_MPPC_COOKIE 129 
#define  NGM_MPPC_RESETREQ 128 
 int /*<<< orphan*/  FUNC8 (struct ng_mesg*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ng_mppe_weakenkey ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static int
FUNC17(node_p node, item_p item, hook_p lasthook)
{
	const priv_p priv = FUNC9(node);
	struct ng_mesg *resp = NULL;
	int error = 0;
	struct ng_mesg *msg;

	FUNC6(item, msg);
	switch (msg->header.typecookie) {
	case NGM_MPPC_COOKIE:
		switch (msg->header.cmd) {
		case NGM_MPPC_CONFIG_COMP:
		case NGM_MPPC_CONFIG_DECOMP:
		    {
			struct ng_mppc_config *const cfg
			    = (struct ng_mppc_config *)msg->data;
			const int isComp =
			    msg->header.cmd == NGM_MPPC_CONFIG_COMP;
			struct ng_mppc_dir *const d = isComp ?
			    &priv->xmit : &priv->recv;

			/* Check configuration */
			if (msg->header.arglen != sizeof(*cfg))
				FUNC0(EINVAL);
			if (cfg->enable) {
				if ((cfg->bits & ~MPPC_VALID_BITS) != 0)
					FUNC0(EINVAL);
#ifndef NETGRAPH_MPPC_COMPRESSION
				if ((cfg->bits & MPPC_BIT) != 0)
					FUNC0(EPROTONOSUPPORT);
#endif
#ifndef NETGRAPH_MPPC_ENCRYPTION
				if ((cfg->bits & MPPE_BITS) != 0)
					FUNC0(EPROTONOSUPPORT);
#endif
			} else
				cfg->bits = 0;

			/* Save return address so we can send reset-req's */
			if (!isComp)
				priv->ctrlnode = FUNC7(item);

			/* Configuration is OK, reset to it */
			d->cfg = *cfg;

#ifdef NETGRAPH_MPPC_COMPRESSION
			/* Initialize state buffers for compression */
			if (d->history != NULL) {
				free(d->history, M_NETGRAPH_MPPC);
				d->history = NULL;
			}
			if ((cfg->bits & MPPC_BIT) != 0) {
				d->history = malloc(isComp ?
				    MPPC_SizeOfCompressionHistory() :
				    MPPC_SizeOfDecompressionHistory(),
				    M_NETGRAPH_MPPC, M_NOWAIT);
				if (d->history == NULL)
					ERROUT(ENOMEM);
				if (isComp)
					MPPC_InitCompressionHistory(d->history);
				else {
					MPPC_InitDecompressionHistory(
					    d->history);
				}
			}
#endif

#ifdef NETGRAPH_MPPC_ENCRYPTION
			/* Generate initial session keys for encryption */
			if ((cfg->bits & MPPE_BITS) != 0) {
				const int keylen = KEYLEN(cfg->bits);

				bcopy(cfg->startkey, d->key, keylen);
				ng_mppc_getkey(cfg->startkey, d->key, keylen);
				if ((cfg->bits & MPPE_40) != 0)
					bcopy(&ng_mppe_weakenkey, d->key, 3);
				else if ((cfg->bits & MPPE_56) != 0)
					bcopy(&ng_mppe_weakenkey, d->key, 1);
				rc4_init(&d->rc4, d->key, keylen);
			}
#endif

			/* Initialize other state */
			d->cc = 0;
			d->flushed = 0;
			break;
		    }

		case NGM_MPPC_RESETREQ:
			FUNC15(node);
			break;

		default:
			error = EINVAL;
			break;
		}
		break;
	default:
		error = EINVAL;
		break;
	}
done:
	FUNC10(error, node, item, resp);
	FUNC8(msg);
	return (error);
}