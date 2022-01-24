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
struct krb5_key_state {TYPE_1__* ks_class; } ;
struct TYPE_4__ {int km_flags; } ;
struct krb5_context {int kc_more_flags; TYPE_2__ kc_msg_order; struct krb5_key_state* kc_recv_sign_Kc; } ;
struct TYPE_3__ {size_t ec_checksumlen; } ;
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
 int GSS_TOKEN_SENT_BY_ACCEPTOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*,int*,size_t) ; 
 scalar_t__ FUNC3 (struct krb5_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct krb5_key_state*,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct krb5_context*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int,size_t,char*) ; 
 size_t FUNC7 (struct mbuf*,struct mbuf**) ; 

__attribute__((used)) static OM_uint32
FUNC8(struct krb5_context *kc, struct mbuf *m, struct mbuf *mic)
{
	OM_uint32 res;
	struct krb5_key_state *key = kc->kc_recv_sign_Kc;
	struct mbuf *mlast;
	uint8_t *p;
	int flags;
	size_t mlen, cklen;
	char buf[32];

	mlen = FUNC7(m, &mlast);
	cklen = key->ks_class->ec_checksumlen;

	FUNC1(mic->m_next == NULL, ("MIC should be contiguous"));
	if (mic->m_len != 16 + cklen)
		return (GSS_S_DEFECTIVE_TOKEN);
	p = mic->m_data;

	/* TOK_ID */
	if (p[0] != 0x04)
		return (GSS_S_DEFECTIVE_TOKEN);
	if (p[1] != 0x04)
		return (GSS_S_DEFECTIVE_TOKEN);

	/* Flags */
	flags = 0;
	if (FUNC3(kc))
		flags |= GSS_TOKEN_SENT_BY_ACCEPTOR;
	if (kc->kc_more_flags & ACCEPTOR_SUBKEY)
		flags |= GSS_TOKEN_ACCEPTOR_SUBKEY;
	if (p[2] != flags)
		return (GSS_S_DEFECTIVE_TOKEN);

	/* Filler */
	if (p[3] != 0xff)
		return (GSS_S_DEFECTIVE_TOKEN);
	if (p[4] != 0xff)
		return (GSS_S_DEFECTIVE_TOKEN);
	if (p[5] != 0xff)
		return (GSS_S_DEFECTIVE_TOKEN);
	if (p[6] != 0xff)
		return (GSS_S_DEFECTIVE_TOKEN);
	if (p[7] != 0xff)
		return (GSS_S_DEFECTIVE_TOKEN);

	/* SND_SEQ */
	if (kc->kc_msg_order.km_flags &
		(GSS_C_REPLAY_FLAG | GSS_C_SEQUENCE_FLAG)) {
		uint32_t seq;
		if (p[8] || p[9] || p[10] || p[11]) {
			res = GSS_S_UNSEQ_TOKEN;
		} else {
			seq = (p[12] << 24) | (p[13] << 16)
				| (p[14] << 8) | p[15];
			res = FUNC5(kc, seq);
		}
		if (FUNC0(res))
			return (res);
	} else {
		res = GSS_S_COMPLETE;
	}

	/*
	 * SGN_CKSUM:
	 *
	 * Calculate the keyed checksum of the message plus the first
	 * 16 bytes of the token header.
	 */
	FUNC6(mic, 16, cklen, buf);
	mlast->m_next = mic;
	FUNC4(key, 0, m, 0, mlen + 16, cklen);
	mlast->m_next = NULL;
	if (FUNC2(buf, p + 16, cklen)) {
		return (GSS_S_BAD_SIG);
	}

	return (GSS_S_COMPLETE);
}