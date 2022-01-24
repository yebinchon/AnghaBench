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
struct krb5_key_state {void* ks_key; TYPE_1__* ks_class; struct des3_state* ks_priv; } ;
struct des3_state {scalar_t__ ds_session; } ;
struct cryptoini {int cri_klen; struct cryptoini* cri_next; void* cri_key; scalar_t__ cri_mlen; int /*<<< orphan*/  cri_alg; } ;
typedef  int /*<<< orphan*/  cri ;
struct TYPE_2__ {int /*<<< orphan*/  ec_keylen; } ;

/* Variables and functions */
 int CRYPTOCAP_F_HARDWARE ; 
 int CRYPTOCAP_F_SOFTWARE ; 
 int /*<<< orphan*/  CRYPTO_3DES_CBC ; 
 int /*<<< orphan*/  CRYPTO_SHA1_HMAC ; 
 int /*<<< orphan*/  FUNC0 (void const*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cryptoini*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,struct cryptoini*,int) ; 

__attribute__((used)) static void
FUNC4(struct krb5_key_state *ks, const void *in)
{
	void *kp = ks->ks_key;
	struct des3_state *ds = ks->ks_priv;
	struct cryptoini cri[2];

	if (kp != in)
		FUNC0(in, kp, ks->ks_class->ec_keylen);

	if (ds->ds_session)
		FUNC2(ds->ds_session);

	FUNC1(cri, sizeof(cri));

	cri[0].cri_alg = CRYPTO_SHA1_HMAC;
	cri[0].cri_klen = 192;
	cri[0].cri_mlen = 0;
	cri[0].cri_key = ks->ks_key;
	cri[0].cri_next = &cri[1];

	cri[1].cri_alg = CRYPTO_3DES_CBC;
	cri[1].cri_klen = 192;
	cri[1].cri_mlen = 0;
	cri[1].cri_key = ks->ks_key;
	cri[1].cri_next = NULL;

	FUNC3(&ds->ds_session, cri,
	    CRYPTOCAP_F_HARDWARE | CRYPTOCAP_F_SOFTWARE);
}