#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int16_t ;
struct TYPE_8__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct l2tp_seq {int cwnd; int /*<<< orphan*/  mtx; int /*<<< orphan*/  ns; int /*<<< orphan*/  rack_timer; struct mbuf** xwin; } ;
typedef  TYPE_4__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_9__ {int /*<<< orphan*/  memoryFailures; int /*<<< orphan*/  xmitDrops; int /*<<< orphan*/  xmitTooBig; int /*<<< orphan*/  xmitInvalid; } ;
struct TYPE_7__ {int /*<<< orphan*/  enabled; } ;
struct TYPE_10__ {struct l2tp_seq seq; TYPE_3__ stats; TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int L2TP_MAX_XWIN ; 
 int /*<<< orphan*/  FUNC2 (struct l2tp_seq*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ng_l2tp_seq_rack_timeout ; 
 int FUNC12 (TYPE_4__* const,struct mbuf*,scalar_t__) ; 

__attribute__((used)) static int
FUNC13(hook_p hook, item_p item)
{
	const node_p node = FUNC5(hook);
	const priv_p priv = FUNC6(node);
	struct l2tp_seq *const seq = &priv->seq;
	struct mbuf *m;
	int error;
	int i;
	u_int16_t	ns;

	/* Sanity check */
	FUNC2(&priv->seq);

	/* If not configured, reject */
	if (!priv->conf.enabled) {
		FUNC4(item);
		FUNC0(ENXIO);
	}

	/* Grab mbuf and discard other stuff XXX */
	FUNC3(item, m);
	FUNC4(item);

	/* Packet should have session ID prepended */
	if (m->m_pkthdr.len < 2) {
		priv->stats.xmitInvalid++;
		FUNC8(m);
		FUNC0(EINVAL);
	}

	/* Check max length */
	if (m->m_pkthdr.len >= 0x10000 - 14) {
		priv->stats.xmitTooBig++;
		FUNC8(m);
		FUNC0(EOVERFLOW);
	}

	FUNC9(&seq->mtx);

	/* Find next empty slot in transmit queue */
	for (i = 0; i < L2TP_MAX_XWIN && seq->xwin[i] != NULL; i++);
	if (i == L2TP_MAX_XWIN) {
		FUNC10(&seq->mtx);
		priv->stats.xmitDrops++;
		FUNC8(m);
		FUNC0(ENOBUFS);
	}
	seq->xwin[i] = m;

	/* If peer's receive window is already full, nothing else to do */
	if (i >= seq->cwnd) {
		FUNC10(&seq->mtx);
		FUNC0(0);
	}

	/* Start retransmit timer if not already running */
	if (!FUNC7(&seq->rack_timer))
		FUNC11(&seq->rack_timer, node, NULL,
		    hz, ng_l2tp_seq_rack_timeout, NULL, 0);
	
	ns = seq->ns++;
	
	FUNC10(&seq->mtx);

	/* Copy packet */
	if ((m = FUNC1(m, M_NOWAIT)) == NULL) {
		priv->stats.memoryFailures++;
		FUNC0(ENOBUFS);
	}

	/* Send packet and increment xmit sequence number */
	error = FUNC12(priv, m, ns);
done:
	/* Done */
	FUNC2(&priv->seq);
	return (error);
}