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
typedef  int u_char ;
struct TYPE_5__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef  TYPE_3__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_6__ {int InOctets; int OutOctets; int /*<<< orphan*/  FramesPlain; int /*<<< orphan*/  Errors; int /*<<< orphan*/  FramesUncomp; int /*<<< orphan*/  FramesComp; } ;
struct TYPE_7__ {int* inbuf; int* outbuf; TYPE_2__ stats; } ;

/* Variables and functions */
 int FUNC0 (int,int*,int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int PPP_GOODFCS ; 
 int PPP_INITFCS ; 
 int PRED1_BUF_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*) ; 
 struct mbuf* FUNC11 (struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(node_p node, struct mbuf *m, struct mbuf **resultp)
{
	const priv_p 	priv = FUNC2(node);
	int 		inlen;
	uint16_t	len, len1, cf, lenn;
	uint16_t	fcs;

	/* Initialize. */
	*resultp = NULL;

	inlen = m->m_pkthdr.len;

	if (inlen > PRED1_BUF_SIZE) {
		priv->stats.Errors++;
		FUNC1(m);
		return (ENOMEM);
	}

	/* We must own the mbuf chain exclusively to modify it. */
	m = FUNC11(m, M_NOWAIT);
	if (m == NULL) {
		priv->stats.Errors++;
		return (ENOMEM);
	}

	/* Work with contiguous regions of memory. */
	FUNC9(m, 0, inlen, (caddr_t)priv->inbuf);

	priv->stats.InOctets += inlen;

	/* Get initial length value. */
	len = priv->inbuf[0] << 8;
	len += priv->inbuf[1];

	cf = (len & 0x8000);
	len &= 0x7fff;

	/* Is data compressed or not really? */
	if (cf) {
		priv->stats.FramesComp++;
		len1 = FUNC3(node, priv->inbuf + 2, priv->outbuf,
		    inlen - 4, PRED1_BUF_SIZE);
		if (len != len1) {
			/* Error is detected. Send reset request */
			FUNC10(m);
			priv->stats.Errors++;
			FUNC6(LOG_NOTICE, "ng_pred1: Comp length error (%d) "
			    "--> len (%d)\n", len, len1);
			return (EIO);
		}

		/*
		 * CRC check on receive is defined in RFC. It is surely required
		 * for compressed frames to signal dictionary corruption,
		 * but it is actually useless for uncompressed frames because
		 * the same check has already done by HDLC and/or other layer.
		 */
		lenn = FUNC5(len);
		fcs = FUNC0(PPP_INITFCS, (u_char *)&lenn, 2);
		fcs = FUNC0(fcs, priv->outbuf, len);
		fcs = FUNC0(fcs, priv->inbuf + inlen - 2, 2);

		if (fcs != PPP_GOODFCS) {
			FUNC10(m);
			priv->stats.Errors++;
	    		FUNC6(LOG_NOTICE, "ng_pred1: Pred1: Bad CRC-16\n");
			return (EIO);
		}

		/* Return packet in an mbuf. */
		FUNC8(m, 0, len, (caddr_t)priv->outbuf);
		if (m->m_pkthdr.len < len) {
			FUNC10(m);
			priv->stats.Errors++;
			return (ENOMEM);
		} else if (len < m->m_pkthdr.len)
			FUNC7(m, len - m->m_pkthdr.len);
		*resultp = m;

	} else {
		priv->stats.FramesUncomp++;
		if (len != (inlen - 4)) {
			/* Wrong length. Send reset request */
			priv->stats.Errors++;
			FUNC6(LOG_NOTICE, "ng_pred1: Uncomp length error (%d) "
			    "--> len (%d)\n", len, inlen - 4);
			FUNC1(m);
			return (EIO);
		}
		FUNC4(node, priv->inbuf + 2, len);
		FUNC7(m, 2);	/* Strip length. */
		FUNC7(m, -2);	/* Strip fcs. */
		*resultp = m;
	}

	priv->stats.FramesPlain++;
	priv->stats.OutOctets += len;

	return (0);
}