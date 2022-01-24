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
struct mbuf {int dummy; } ;
struct krb5_key_state {struct des3_state* ks_priv; } ;
struct des3_state {int /*<<< orphan*/  ds_lock; int /*<<< orphan*/  ds_session; } ;
struct cryptop {size_t crp_ilen; int crp_olen; int crp_flags; int /*<<< orphan*/  crp_callback; void* crp_opaque; void* crp_buf; scalar_t__ crp_etype; int /*<<< orphan*/  crp_session; struct cryptodesc* crp_desc; } ;
struct cryptodesc {size_t crd_skip; size_t crd_len; size_t crd_inject; int /*<<< orphan*/  crd_alg; int /*<<< orphan*/ * crd_next; scalar_t__ crd_flags; } ;

/* Variables and functions */
 int CRYPTOCAP_F_SYNC ; 
 int CRYPTO_F_CBIFSYNC ; 
 int CRYPTO_F_DONE ; 
 int CRYPTO_F_IMBUF ; 
 int /*<<< orphan*/  CRYPTO_SHA1_HMAC ; 
 int FUNC0 (struct cryptop*) ; 
 int /*<<< orphan*/  FUNC1 (struct cryptop*) ; 
 struct cryptop* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  des3_crypto_cb ; 
 int FUNC4 (struct cryptop*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(const struct krb5_key_state *ks, int usage,
    struct mbuf *inout, size_t skip, size_t inlen, size_t outlen)
{
	struct des3_state *ds = ks->ks_priv;
	struct cryptop *crp;
	struct cryptodesc *crd;
	int error;

	crp = FUNC2(1);
	crd = crp->crp_desc;

	crd->crd_skip = skip;
	crd->crd_len = inlen;
	crd->crd_inject = skip + inlen;
	crd->crd_flags = 0;
	crd->crd_next = NULL;
	crd->crd_alg = CRYPTO_SHA1_HMAC;

	crp->crp_session = ds->ds_session;
	crp->crp_ilen = inlen;
	crp->crp_olen = 20;
	crp->crp_etype = 0;
	crp->crp_flags = CRYPTO_F_IMBUF | CRYPTO_F_CBIFSYNC;
	crp->crp_buf = (void *) inout;
	crp->crp_opaque = (void *) ds;
	crp->crp_callback = des3_crypto_cb;

	error = FUNC0(crp);

	if ((FUNC3(ds->ds_session) & CRYPTOCAP_F_SYNC) == 0) {
		FUNC5(&ds->ds_lock);
		if (!error && !(crp->crp_flags & CRYPTO_F_DONE))
			error = FUNC4(crp, &ds->ds_lock, 0, "gssdes3", 0);
		FUNC6(&ds->ds_lock);
	}

	FUNC1(crp);
}