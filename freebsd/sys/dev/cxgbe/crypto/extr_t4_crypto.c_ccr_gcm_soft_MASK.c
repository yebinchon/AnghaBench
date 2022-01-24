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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct enc_xform {int (* setkey ) (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* zerokey ) (int /*<<< orphan*/ **) ;int /*<<< orphan*/  (* decrypt ) (int /*<<< orphan*/ *,char*) ;int /*<<< orphan*/  (* encrypt ) (int /*<<< orphan*/ *,char*) ;int /*<<< orphan*/  (* reinit ) (int /*<<< orphan*/ *,char*) ;} ;
struct cryptop {int crp_etype; int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; } ;
struct cryptodesc {int crd_flags; int crd_len; scalar_t__ crd_skip; scalar_t__ crd_inject; int /*<<< orphan*/  crd_iv; } ;
struct TYPE_2__ {int /*<<< orphan*/  key_len; int /*<<< orphan*/  enckey; } ;
struct ccr_session {TYPE_1__ blkcipher; } ;
struct auth_hash {int /*<<< orphan*/  ctxsize; int /*<<< orphan*/  (* Final ) (char*,void*) ;int /*<<< orphan*/  (* Update ) (void*,char*,int) ;int /*<<< orphan*/  (* Reinit ) (void*,char*,int) ;int /*<<< orphan*/  (* Setkey ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Init ) (void*) ;} ;
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  digest2 ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 int AES_BLOCK_LEN ; 
 int CRD_F_ENCRYPT ; 
 int CRD_F_IV_EXPLICIT ; 
 int CRD_F_IV_PRESENT ; 
 int EBADMSG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GMAC_BLOCK_LEN ; 
 int GMAC_DIGEST_LEN ; 
 int /*<<< orphan*/  M_CCR ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 struct auth_hash auth_hash_nist_gmac_aes_128 ; 
 struct auth_hash auth_hash_nist_gmac_aes_192 ; 
 struct auth_hash auth_hash_nist_gmac_aes_256 ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cryptop*) ; 
 struct enc_xform enc_xform_aes_nist_gcm ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC22 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (void*,char*,int) ; 
 scalar_t__ FUNC24 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC25(struct ccr_session *s, struct cryptop *crp,
    struct cryptodesc *crda, struct cryptodesc *crde)
{
	struct auth_hash *axf;
	struct enc_xform *exf;
	void *auth_ctx;
	uint8_t *kschedule;
	char block[GMAC_BLOCK_LEN];
	char digest[GMAC_DIGEST_LEN];
	char iv[AES_BLOCK_LEN];
	int error, i, len;

	auth_ctx = NULL;
	kschedule = NULL;

	/* Initialize the MAC. */
	switch (s->blkcipher.key_len) {
	case 16:
		axf = &auth_hash_nist_gmac_aes_128;
		break;
	case 24:
		axf = &auth_hash_nist_gmac_aes_192;
		break;
	case 32:
		axf = &auth_hash_nist_gmac_aes_256;
		break;
	default:
		error = EINVAL;
		goto out;
	}
	auth_ctx = FUNC8(axf->ctxsize, M_CCR, M_NOWAIT);
	if (auth_ctx == NULL) {
		error = ENOMEM;
		goto out;
	}
	axf->Init(auth_ctx);
	axf->Setkey(auth_ctx, s->blkcipher.enckey, s->blkcipher.key_len);

	/* Initialize the cipher. */
	exf = &enc_xform_aes_nist_gcm;
	error = exf->setkey(&kschedule, s->blkcipher.enckey,
	    s->blkcipher.key_len);
	if (error)
		goto out;

	/*
	 * This assumes a 12-byte IV from the crp.  See longer comment
	 * above in ccr_gcm() for more details.
	 */
	if (crde->crd_flags & CRD_F_ENCRYPT) {
		if (crde->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC9(iv, crde->crd_iv, 12);
		else
			FUNC0(iv, 12, 0);
		if ((crde->crd_flags & CRD_F_IV_PRESENT) == 0)
			FUNC2(crp->crp_flags, crp->crp_buf,
			    crde->crd_inject, 12, iv);
	} else {
		if (crde->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC9(iv, crde->crd_iv, 12);
		else
			FUNC3(crp->crp_flags, crp->crp_buf,
			    crde->crd_inject, 12, iv);
	}
	*(uint32_t *)&iv[12] = FUNC6(1);

	axf->Reinit(auth_ctx, iv, sizeof(iv));

	/* MAC the AAD. */
	for (i = 0; i < crda->crd_len; i += sizeof(block)) {
		len = FUNC7(crda->crd_len - i, sizeof(block));
		FUNC3(crp->crp_flags, crp->crp_buf, crda->crd_skip +
		    i, len, block);
		FUNC1(block + len, sizeof(block) - len);
		axf->Update(auth_ctx, block, sizeof(block));
	}

	exf->reinit(kschedule, iv);

	/* Do encryption with MAC */
	for (i = 0; i < crde->crd_len; i += sizeof(block)) {
		len = FUNC7(crde->crd_len - i, sizeof(block));
		FUNC3(crp->crp_flags, crp->crp_buf, crde->crd_skip +
		    i, len, block);
		FUNC1(block + len, sizeof(block) - len);
		if (crde->crd_flags & CRD_F_ENCRYPT) {
			exf->encrypt(kschedule, block);
			axf->Update(auth_ctx, block, len);
			FUNC2(crp->crp_flags, crp->crp_buf,
			    crde->crd_skip + i, len, block);
		} else {
			axf->Update(auth_ctx, block, len);
		}
	}

	/* Length block. */
	FUNC1(block, sizeof(block));
	((uint32_t *)block)[1] = FUNC6(crda->crd_len * 8);
	((uint32_t *)block)[3] = FUNC6(crde->crd_len * 8);
	axf->Update(auth_ctx, block, sizeof(block));

	/* Finalize MAC. */
	axf->Final(digest, auth_ctx);

	/* Inject or validate tag. */
	if (crde->crd_flags & CRD_F_ENCRYPT) {
		FUNC2(crp->crp_flags, crp->crp_buf, crda->crd_inject,
		    sizeof(digest), digest);
		error = 0;
	} else {
		char digest2[GMAC_DIGEST_LEN];

		FUNC3(crp->crp_flags, crp->crp_buf, crda->crd_inject,
		    sizeof(digest2), digest2);
		if (FUNC24(digest, digest2, sizeof(digest)) == 0) {
			error = 0;

			/* Tag matches, decrypt data. */
			for (i = 0; i < crde->crd_len; i += sizeof(block)) {
				len = FUNC7(crde->crd_len - i, sizeof(block));
				FUNC3(crp->crp_flags, crp->crp_buf,
				    crde->crd_skip + i, len, block);
				FUNC1(block + len, sizeof(block) - len);
				exf->decrypt(kschedule, block);
				FUNC2(crp->crp_flags, crp->crp_buf,
				    crde->crd_skip + i, len, block);
			}
		} else
			error = EBADMSG;
	}

	exf->zerokey(&kschedule);
out:
	if (auth_ctx != NULL) {
		FUNC10(auth_ctx, 0, axf->ctxsize);
		FUNC5(auth_ctx, M_CCR);
	}
	crp->crp_etype = error;
	FUNC4(crp);
}