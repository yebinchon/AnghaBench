#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct mbuf {int m_len; int* m_data; struct mbuf* m_next; } ;
struct krb5_key_state {struct krb5_encryption_class* ks_class; } ;
struct krb5_encryption_class {size_t ec_blocklen; size_t ec_checksumlen; } ;
struct TYPE_2__ {int km_flags; } ;
struct krb5_context {int kc_more_flags; TYPE_1__ kc_msg_order; struct krb5_key_state* kc_recv_seal_Kc; struct krb5_key_state* kc_recv_seal_Ki; struct krb5_key_state* kc_recv_seal_Ke; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int ACCEPTOR_SUBKEY ; 
 int GSS_C_REPLAY_FLAG ; 
 int GSS_C_SEQUENCE_FLAG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSS_S_BAD_SIG ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  GSS_S_DEFECTIVE_TOKEN ; 
 int /*<<< orphan*/  GSS_S_UNSEQ_TOKEN ; 
 int GSS_TOKEN_ACCEPTOR_SUBKEY ; 
 int GSS_TOKEN_SEALED ; 
 int GSS_TOKEN_SENT_BY_ACCEPTOR ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 scalar_t__ FUNC3 (struct krb5_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct krb5_key_state*,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct krb5_key_state*,struct mbuf*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct krb5_context*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,size_t,size_t,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*) ; 
 struct mbuf* FUNC11 (struct mbuf*) ; 
 size_t FUNC12 (struct mbuf*,struct mbuf**) ; 
 struct mbuf* FUNC13 (struct mbuf*,int) ; 
 struct mbuf* FUNC14 (struct mbuf*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mbuf*,size_t) ; 

__attribute__((used)) static OM_uint32
FUNC16(struct krb5_context *kc, struct mbuf **mp, int *conf_state)
{
	OM_uint32 res;
	struct krb5_key_state *Ke = kc->kc_recv_seal_Ke;
	struct krb5_key_state *Ki = kc->kc_recv_seal_Ki;
	struct krb5_key_state *Kc = kc->kc_recv_seal_Kc;
	const struct krb5_encryption_class *ec = Ke->ks_class;
	struct mbuf *m, *mlast, *hm, *cm;
	uint8_t *p, *pp;
	int sealed, flags, EC, RRC;
	size_t blen, cklen, ctlen, mlen, plen, tlen;
	char buf[32], buf2[32];

	m = *mp;
	mlen = FUNC12(m, &mlast);

	if (mlen <= 16)
		return (GSS_S_DEFECTIVE_TOKEN);
	if (m->m_len < 16) {
		m = FUNC13(m, 16);
		*mp = m;
	}
	p = m->m_data;

	/* TOK_ID */
	if (p[0] != 0x05)
		return (GSS_S_DEFECTIVE_TOKEN);
	if (p[1] != 0x04)
		return (GSS_S_DEFECTIVE_TOKEN);

	/* Flags */
	sealed = p[2] & GSS_TOKEN_SEALED;
	flags = sealed;
	if (FUNC3(kc))
		flags |= GSS_TOKEN_SENT_BY_ACCEPTOR;
	if (kc->kc_more_flags & ACCEPTOR_SUBKEY)
		flags |= GSS_TOKEN_ACCEPTOR_SUBKEY;
	if (p[2] != flags)
		return (GSS_S_DEFECTIVE_TOKEN);

	/* Filler */
	if (p[3] != 0xff)
		return (GSS_S_DEFECTIVE_TOKEN);

	/* EC + RRC */
	EC = (p[4] << 8) + p[5];
	RRC = (p[6] << 8) + p[7];

	/* SND_SEQ */
	if (kc->kc_msg_order.km_flags &
		(GSS_C_REPLAY_FLAG | GSS_C_SEQUENCE_FLAG)) {
		uint32_t seq;
		if (p[8] || p[9] || p[10] || p[11]) {
			res = GSS_S_UNSEQ_TOKEN;
		} else {
			seq = (p[12] << 24) | (p[13] << 16)
				| (p[14] << 8) | p[15];
			res = FUNC6(kc, seq);
		}
		if (FUNC0(res))
			return (res);
	} else {
		res = GSS_S_COMPLETE;
	}

	/*
	 * Separate the header before dealing with RRC. We only need
	 * to keep the header if the message isn't encrypted.
	 */
	if (sealed) {
		hm = NULL;
		FUNC7(m, 16);
	} else {
		hm = m;
		*mp = m = FUNC14(m, 16, M_WAITOK);
		mlast = FUNC11(m);
	}

	/*
	 * Undo the effects of RRC by rotating left.
	 */
	if (RRC > 0) {
		struct mbuf *rm;
		size_t rlen;

		rlen = mlen - 16;
		if (RRC <= sizeof(buf) && m->m_len >= rlen) {
			/*
			 * Simple case, just rearrange the bytes in m.
			 */
			FUNC2(m->m_data, buf, RRC);
			FUNC2(m->m_data + RRC, m->m_data, rlen - RRC);
			FUNC2(buf, m->m_data + rlen - RRC, RRC);
		} else {
			/*
			 * More complicated - rearrange the mbuf
			 * chain.
			 */
			rm = m;
			*mp = m = FUNC14(m, RRC, M_WAITOK);
			FUNC8(m, rm);
			mlast = rm;
		}
	}

	blen = ec->ec_blocklen;
	cklen = ec->ec_checksumlen;
	if (sealed) {
		/*
		 * Decrypt according to RFC 4121 section 4.2 and RFC
		 * 3961 section 5.3. The message must be large enough
		 * for a blocksize confounder, at least one block of
		 * cyphertext and a checksum.
		 */
		if (mlen < 16 + 2*blen + cklen)
			return (GSS_S_DEFECTIVE_TOKEN);

		ctlen = mlen - 16 - cklen;
		FUNC5(Ke, m, 0, ctlen, NULL, 0);

		/*
		 * The size of the plaintext is ctlen minus blocklen
		 * (for the confounder), 16 (for the copy of the token
		 * header) and EC (for the filler). The actual
		 * plaintext starts after the confounder.
		 */
		plen = ctlen - blen - 16 - EC;
		pp = p + 16 + blen;

		/*
		 * Checksum the padded plaintext.
		 */
		FUNC9(m, ctlen, cklen, buf);
		FUNC4(Ki, 0, m, 0, ctlen, cklen);
		FUNC9(m, ctlen, cklen, buf2);

		if (FUNC1(buf, buf2, cklen))
			return (GSS_S_BAD_SIG);

		/*
		 * Trim the message back to just plaintext.
		 */
		FUNC7(m, blen);
		tlen = 16 + EC + cklen;
		if (mlast->m_len >= tlen) {
			mlast->m_len -= tlen;
		} else {
			FUNC15(m, plen);
		}
	} else {
		/*
		 * The plaintext message is followed by a checksum of
		 * the plaintext plus a version of the header where EC
		 * and RRC are set to zero. Also, the original EC must
		 * be our checksum size.
		 */
		if (mlen < 16 + cklen || EC != cklen)
			return (GSS_S_DEFECTIVE_TOKEN);

		/*
		 * The size of the plaintext is simply the message
		 * size less header and checksum. The plaintext starts
		 * right after the header (which we have saved in hm).
		 */
		plen = mlen - 16 - cklen;

		/*
		 * Insert a copy of the header (with EC and RRC set to
		 * zero) between the plaintext message and the
		 * checksum.
		 */
		p = hm->m_data;
		p[4] = p[5] = p[6] = p[7] = 0;

		cm = FUNC14(m, plen, M_WAITOK);
		mlast = FUNC11(m);
		m->m_next = hm;
		hm->m_next = cm;

		FUNC2(cm->m_data, buf, cklen);
		FUNC4(Kc, 0, m, 0, plen + 16, cklen);
		if (FUNC1(cm->m_data, buf, cklen))
			return (GSS_S_BAD_SIG);

		/*
		 * The checksum matches, discard all buf the plaintext.
		 */
		mlast->m_next = NULL;
		FUNC10(hm);
	}

	if (conf_state)
		*conf_state = (sealed != 0);

	return (res);
}