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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct mbuf {int m_len; int* m_data; struct mbuf* m_next; } ;
struct krb5_context {int /*<<< orphan*/  kc_tokenkey; int /*<<< orphan*/  kc_local_seqnumber; TYPE_2__* kc_checksumkey; } ;
struct TYPE_4__ {TYPE_1__* ks_class; } ;
struct TYPE_3__ {size_t ec_checksumlen; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,...) ; 
 scalar_t__ FUNC3 (struct krb5_context*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,struct mbuf*,int,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mbuf*,size_t,int,char*,int) ; 
 int* FUNC6 (char*,size_t,size_t,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 size_t FUNC8 (struct mbuf*,struct mbuf**) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static OM_uint32
FUNC10(struct krb5_context *kc, struct mbuf *m,
    struct mbuf **micp, uint8_t sgn_alg[2])
{
	struct mbuf *mlast, *mic, *tm;
	uint8_t *p, dir;
	size_t tlen, mlen, cklen;
	uint32_t seq;
	char buf[8];

	mlen = FUNC8(m, &mlast);

	tlen = FUNC9(kc->kc_tokenkey);
	p = FUNC6("\x01\x01", tlen, tlen, &mic);
	p += 2;			/* TOK_ID */
	*p++ = sgn_alg[0];	/* SGN_ALG */
	*p++ = sgn_alg[1];

	*p++ = 0xff;		/* filler */
	*p++ = 0xff;
	*p++ = 0xff;
	*p++ = 0xff;

	/*
	 * SGN_CKSUM:
	 *
	 * Calculate the keyed checksum of the token header plus the
	 * message.
	 */
	cklen = kc->kc_checksumkey->ks_class->ec_checksumlen;

	mic->m_len = p - (uint8_t *) mic->m_data;
	mic->m_next = m;
	FUNC0(tm, M_WAITOK, MT_DATA);
	tm->m_len = cklen;
	mlast->m_next = tm;

	FUNC4(kc->kc_checksumkey, 15, mic, mic->m_len - 8,
	    8 + mlen, cklen);
	FUNC2(tm->m_data, p + 8, cklen);
	mic->m_next = NULL;
	mlast->m_next = NULL;
	FUNC7(tm);
	
	/*
	 * SND_SEQ:
	 *
	 * Take the four bytes of the sequence number least
	 * significant first followed by four bytes of direction
	 * marker (zero for initiator and 0xff for acceptor). Encrypt
	 * that data using the SGN_CKSUM as IV. Note: ARC4 wants the
	 * sequence number big-endian.
	 */
	seq = FUNC1(&kc->kc_local_seqnumber, 1);
	if (sgn_alg[0] == 0x11) {
		p[0] = (seq >> 24);
		p[1] = (seq >> 16);
		p[2] = (seq >> 8);
		p[3] = (seq >> 0);
	} else {
		p[0] = (seq >> 0);
		p[1] = (seq >> 8);
		p[2] = (seq >> 16);
		p[3] = (seq >> 24);
	}
	if (FUNC3(kc)) {
		dir = 0;
	} else {
		dir = 0xff;
	}
	p[4] = dir;
	p[5] = dir;
	p[6] = dir;
	p[7] = dir;
	FUNC2(p + 8, buf, 8);

	/*
	 * Set the mic buffer to its final size so that the encrypt
	 * can see the SND_SEQ part.
	 */
	mic->m_len += 8 + cklen;
	FUNC5(kc->kc_tokenkey, mic, mic->m_len - cklen - 8, 8, buf, 8);

	*micp = mic;
	return (GSS_S_COMPLETE);
}