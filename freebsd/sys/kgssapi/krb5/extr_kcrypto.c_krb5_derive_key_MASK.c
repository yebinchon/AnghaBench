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
typedef  int /*<<< orphan*/  uint8_t ;
struct mbuf {int m_len; int /*<<< orphan*/ * m_data; } ;
struct krb5_key_state {struct krb5_encryption_class* ks_class; } ;
struct krb5_encryption_class {int ec_blocklen; int ec_keybits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_GSSAPI ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct krb5_key_state* FUNC3 (struct krb5_encryption_class const*) ; 
 int /*<<< orphan*/  FUNC4 (struct krb5_key_state*,struct mbuf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct krb5_key_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int) ; 

struct krb5_key_state *
FUNC10(struct krb5_key_state *inkey,
    void *constant, size_t constantlen)
{
	struct krb5_key_state *dk;
	const struct krb5_encryption_class *ec = inkey->ks_class;
	uint8_t *folded;
	uint8_t *bytes, *p, *q;
	struct mbuf *m;
	int randomlen, i;

	/*
	 * Expand the constant to blocklen bytes.
	 */
	folded = FUNC8(ec->ec_blocklen, M_GSSAPI, M_WAITOK);
	FUNC5(folded, ec->ec_blocklen, constant, constantlen);

	/*
	 * Generate enough bytes for keybits rounded up to a multiple
	 * of blocklen.
	 */
	randomlen = FUNC9(ec->ec_keybits / 8, ec->ec_blocklen);
	bytes = FUNC8(randomlen, M_GSSAPI, M_WAITOK);
	FUNC0(m, M_WAITOK, MT_DATA);
	m->m_len = ec->ec_blocklen;
	for (i = 0, p = bytes, q = folded; i < randomlen;
	     q = p, i += ec->ec_blocklen, p += ec->ec_blocklen) {
		FUNC1(q, m->m_data, ec->ec_blocklen);
		FUNC4(inkey, m, 0, ec->ec_blocklen, NULL, 0);
		FUNC1(m->m_data, p, ec->ec_blocklen);
	}
	FUNC7(m);

	dk = FUNC3(ec);
	FUNC6(dk, bytes);

	FUNC2(folded, M_GSSAPI);
	FUNC2(bytes, M_GSSAPI);

	return (dk);
}