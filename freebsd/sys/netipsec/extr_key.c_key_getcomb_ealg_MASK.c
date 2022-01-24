#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct sadb_comb {int sadb_comb_encrypt; int sadb_comb_encrypt_minbits; void* sadb_comb_encrypt_maxbits; } ;
struct mbuf {int m_len; struct mbuf* m_next; } ;
struct enc_xform {int /*<<< orphan*/  maxkey; int /*<<< orphan*/  minkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int const MLEN ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int const) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int FUNC3 (int) ; 
 int SADB_EALG_MAX ; 
 scalar_t__ V_ipsec_esp_auth ; 
 void* V_ipsec_esp_keymin ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sadb_comb*,int) ; 
 int /*<<< orphan*/  caddr_t ; 
 struct enc_xform* FUNC6 (int) ; 
 struct mbuf* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sadb_comb*) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*) ; 
 struct mbuf* FUNC11 (struct mbuf*,int,int const,int*) ; 
 struct sadb_comb* FUNC12 (struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mbuf *
FUNC13(void)
{
	struct sadb_comb *comb;
	const struct enc_xform *algo;
	struct mbuf *result = NULL, *m, *n;
	int encmin;
	int i, off, o;
	int totlen;
	const int l = FUNC3(sizeof(struct sadb_comb));

	m = NULL;
	for (i = 1; i <= SADB_EALG_MAX; i++) {
		algo = FUNC6(i);
		if (algo == NULL)
			continue;

		/* discard algorithms with key size smaller than system min */
		if (FUNC4(algo->maxkey) < V_ipsec_esp_keymin)
			continue;
		if (FUNC4(algo->minkey) < V_ipsec_esp_keymin)
			encmin = V_ipsec_esp_keymin;
		else
			encmin = FUNC4(algo->minkey);

		if (V_ipsec_esp_auth)
			m = FUNC7();
		else {
			FUNC0(l <= MLEN,
				("l=%u > MLEN=%lu", l, (u_long) MLEN));
			FUNC1(m, M_NOWAIT, MT_DATA);
			if (m) {
				FUNC2(m, l);
				m->m_len = l;
				m->m_next = NULL;
				FUNC5(FUNC12(m, caddr_t), m->m_len);
			}
		}
		if (!m)
			goto fail;

		totlen = 0;
		for (n = m; n; n = n->m_next)
			totlen += n->m_len;
		FUNC0((totlen % l) == 0, ("totlen=%u, l=%u", totlen, l));

		for (off = 0; off < totlen; off += l) {
			n = FUNC11(m, off, l, &o);
			if (!n) {
				/* m is already freed */
				goto fail;
			}
			comb = (struct sadb_comb *)(FUNC12(n, caddr_t) + o);
			FUNC5(comb, sizeof(*comb));
			FUNC8(comb);
			comb->sadb_comb_encrypt = i;
			comb->sadb_comb_encrypt_minbits = encmin;
			comb->sadb_comb_encrypt_maxbits = FUNC4(algo->maxkey);
		}

		if (!result)
			result = m;
		else
			FUNC9(result, m);
	}

	return result;

 fail:
	if (result)
		FUNC10(result);
	return NULL;
}