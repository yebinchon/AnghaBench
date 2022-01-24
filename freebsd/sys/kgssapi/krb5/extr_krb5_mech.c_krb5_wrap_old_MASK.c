#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct mbuf {int m_data; int m_len; struct mbuf* m_next; } ;
struct krb5_context {TYPE_3__* kc_encryptkey; TYPE_3__* kc_tokenkey; int /*<<< orphan*/  kc_local_seqnumber; TYPE_5__* kc_checksumkey; } ;
struct TYPE_9__ {TYPE_2__* ks_class; } ;
struct TYPE_8__ {TYPE_1__* ks_class; } ;
struct TYPE_7__ {size_t ec_checksumlen; } ;
struct TYPE_6__ {size_t ec_msgblocklen; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_DATA ; 
 int FUNC1 (struct mbuf*) ; 
 size_t FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int*,size_t) ; 
 scalar_t__ FUNC6 (struct krb5_context*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int,struct mbuf*,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct mbuf*,int,size_t,int*,int) ; 
 int* FUNC9 (char*,size_t,size_t,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*) ; 
 size_t FUNC11 (struct mbuf*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC12 (int,size_t,size_t) ; 
 size_t FUNC13 (TYPE_3__*) ; 

__attribute__((used)) static OM_uint32
FUNC14(struct krb5_context *kc, int conf_req_flag,
    struct mbuf **mp, int *conf_state,
    uint8_t sgn_alg[2], uint8_t seal_alg[2])
{
	struct mbuf *m, *mlast, *tm, *cm, *pm;
	size_t mlen, tlen, padlen, datalen;
	uint8_t *p, dir;
	size_t cklen;
	uint8_t buf[8];
	uint32_t seq;

	/*
	 * How many trailing pad bytes do we need?
	 */
	m = *mp;
	mlen = FUNC11(m, &mlast);
	tlen = kc->kc_tokenkey->ks_class->ec_msgblocklen;
	padlen = tlen - (mlen % tlen);

	/*
	 * The data part of the token has eight bytes of random
	 * confounder prepended and followed by up to eight bytes of
	 * padding bytes each of which is set to the number of padding
	 * bytes.
	 */
	datalen = mlen + 8 + padlen;
	tlen = FUNC13(kc->kc_tokenkey);

	p = FUNC9("\x02\x01", tlen, datalen + tlen, &tm);
	p += 2;			/* TOK_ID */
	*p++ = sgn_alg[0];	/* SGN_ALG */
	*p++ = sgn_alg[1];
	if (conf_req_flag) {
		*p++ = seal_alg[0]; /* SEAL_ALG */
		*p++ = seal_alg[1];
	} else {
		*p++ = 0xff;	/* SEAL_ALG = none */
		*p++ = 0xff;
	}

	*p++ = 0xff;		/* filler */
	*p++ = 0xff;

	/*
	 * Copy the padded message data.
	 */
	if (FUNC1(m) >= 8) {
		m->m_data -= 8;
		m->m_len += 8;
	} else {
		FUNC0(cm, M_WAITOK, MT_DATA);
		cm->m_len = 8;
		cm->m_next = m;
		m = cm;
	}
	FUNC3(m->m_data, 8, 0);
	if (FUNC2(mlast) >= padlen) {
		FUNC12(mlast->m_data + mlast->m_len, padlen, padlen);
		mlast->m_len += padlen;
	} else {
		FUNC0(pm, M_WAITOK, MT_DATA);
		FUNC12(pm->m_data, padlen, padlen);
		pm->m_len = padlen;
		mlast->m_next = pm;
		mlast = pm;
	}
	tm->m_next = m;

	/*
	 * SGN_CKSUM:
	 *
	 * Calculate the keyed checksum of the token header plus the
	 * padded message. Fiddle with tm->m_len so that we only
	 * checksum the 8 bytes of head that we care about.
	 */
	cklen = kc->kc_checksumkey->ks_class->ec_checksumlen;
	tlen = tm->m_len;
	tm->m_len = p - (uint8_t *) tm->m_data;
	FUNC0(cm, M_WAITOK, MT_DATA);
	cm->m_len = cklen;
	mlast->m_next = cm;
	FUNC7(kc->kc_checksumkey, 13, tm, tm->m_len - 8,
	    datalen + 8, cklen);
	tm->m_len = tlen;
	mlast->m_next = NULL;
	FUNC5(cm->m_data, p + 8, cklen);
	FUNC10(cm);

	/*
	 * SND_SEQ:
	 *
	 * Take the four bytes of the sequence number least
	 * significant first (most significant first for ARCFOUR)
	 * followed by four bytes of direction marker (zero for
	 * initiator and 0xff for acceptor). Encrypt that data using
	 * the SGN_CKSUM as IV.
	 */
	seq = FUNC4(&kc->kc_local_seqnumber, 1);
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
	if (FUNC6(kc)) {
		dir = 0;
	} else {
		dir = 0xff;
	}
	p[4] = dir;
	p[5] = dir;
	p[6] = dir;
	p[7] = dir;
	FUNC8(kc->kc_tokenkey, tm, p - (uint8_t *) tm->m_data,
	    8, p + 8, 8);

	if (conf_req_flag) {
		/*
		 * Encrypt the padded message with an IV of zero for
		 * DES and DES3, or an IV of the sequence number in
		 * big-endian format for ARCFOUR.
		 */
		if (seal_alg[0] == 0x10) {
			buf[0] = (seq >> 24);
			buf[1] = (seq >> 16);
			buf[2] = (seq >> 8);
			buf[3] = (seq >> 0);
			FUNC8(kc->kc_encryptkey, m, 0, datalen,
			    buf, 4);
		} else {
			FUNC8(kc->kc_encryptkey, m, 0, datalen,
			    NULL, 0);
		}
	}

	if (conf_state)
		*conf_state = conf_req_flag;

	*mp = tm;
	return (GSS_S_COMPLETE);
}