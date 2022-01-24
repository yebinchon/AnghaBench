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
struct TYPE_4__ {int authDataLength; int cryptDataLength; } ;
union authctx {TYPE_2__ aes_cbc_mac_ctx; } ;
typedef  int /*<<< orphan*/  uint8_t ;
struct enc_xform {int (* setkey ) (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* zerokey ) (int /*<<< orphan*/ **) ;int /*<<< orphan*/  (* decrypt ) (int /*<<< orphan*/ *,char*) ;int /*<<< orphan*/  (* reinit ) (int /*<<< orphan*/ *,char*) ;int /*<<< orphan*/  (* encrypt ) (int /*<<< orphan*/ *,char*) ;} ;
struct cryptop {int crp_etype; int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; } ;
struct cryptodesc {int crd_flags; int crd_len; scalar_t__ crd_skip; scalar_t__ crd_inject; int /*<<< orphan*/  crd_iv; } ;
struct TYPE_3__ {int /*<<< orphan*/  key_len; int /*<<< orphan*/  enckey; } ;
struct ccr_session {TYPE_1__ blkcipher; } ;
struct auth_hash {int /*<<< orphan*/  ctxsize; int /*<<< orphan*/  (* Final ) (char*,union authctx*) ;int /*<<< orphan*/  (* Update ) (union authctx*,char*,int) ;int /*<<< orphan*/  (* Reinit ) (union authctx*,char*,int) ;int /*<<< orphan*/  (* Setkey ) (union authctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Init ) (union authctx*) ;} ;
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  digest2 ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 int AES_CBC_MAC_HASH_LEN ; 
 int AES_CCM_IV_LEN ; 
 int CCM_CBC_BLOCK_LEN ; 
 int CRD_F_ENCRYPT ; 
 int CRD_F_IV_EXPLICIT ; 
 int CRD_F_IV_PRESENT ; 
 int EBADMSG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GMAC_DIGEST_LEN ; 
 int /*<<< orphan*/  M_CCR ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 struct auth_hash auth_hash_ccm_cbc_mac_128 ; 
 struct auth_hash auth_hash_ccm_cbc_mac_192 ; 
 struct auth_hash auth_hash_ccm_cbc_mac_256 ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cryptop*) ; 
 struct enc_xform enc_xform_ccm ; 
 int /*<<< orphan*/  FUNC5 (union authctx*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int) ; 
 union authctx* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (union authctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (union authctx*) ; 
 int /*<<< orphan*/  FUNC11 (union authctx*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,union authctx*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (union authctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (union authctx*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (union authctx*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC21 (union authctx*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC24 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC25(struct ccr_session *s, struct cryptop *crp,
    struct cryptodesc *crda, struct cryptodesc *crde)
{
	struct auth_hash *axf;
	struct enc_xform *exf;
	union authctx *auth_ctx;
	uint8_t *kschedule;
	char block[CCM_CBC_BLOCK_LEN];
	char digest[AES_CBC_MAC_HASH_LEN];
	char iv[AES_CCM_IV_LEN];
	int error, i, len;

	auth_ctx = NULL;
	kschedule = NULL;

	/* Initialize the MAC. */
	switch (s->blkcipher.key_len) {
	case 16:
		axf = &auth_hash_ccm_cbc_mac_128;
		break;
	case 24:
		axf = &auth_hash_ccm_cbc_mac_192;
		break;
	case 32:
		axf = &auth_hash_ccm_cbc_mac_256;
		break;
	default:
		error = EINVAL;
		goto out;
	}
	auth_ctx = FUNC7(axf->ctxsize, M_CCR, M_NOWAIT);
	if (auth_ctx == NULL) {
		error = ENOMEM;
		goto out;
	}
	axf->Init(auth_ctx);
	axf->Setkey(auth_ctx, s->blkcipher.enckey, s->blkcipher.key_len);

	/* Initialize the cipher. */
	exf = &enc_xform_ccm;
	error = exf->setkey(&kschedule, s->blkcipher.enckey,
	    s->blkcipher.key_len);
	if (error)
		goto out;

	if (crde->crd_flags & CRD_F_ENCRYPT) {
		if (crde->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC8(iv, crde->crd_iv, AES_CCM_IV_LEN);
		else
			FUNC0(iv, AES_CCM_IV_LEN, 0);
		if ((crde->crd_flags & CRD_F_IV_PRESENT) == 0)
			FUNC2(crp->crp_flags, crp->crp_buf,
			    crde->crd_inject, AES_CCM_IV_LEN, iv);
	} else {
		if (crde->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC8(iv, crde->crd_iv, AES_CCM_IV_LEN);
		else
			FUNC3(crp->crp_flags, crp->crp_buf,
			    crde->crd_inject, AES_CCM_IV_LEN, iv);
	}

	auth_ctx->aes_cbc_mac_ctx.authDataLength = crda->crd_len;
	auth_ctx->aes_cbc_mac_ctx.cryptDataLength = crde->crd_len;
	axf->Reinit(auth_ctx, iv, sizeof(iv));

	/* MAC the AAD. */
	for (i = 0; i < crda->crd_len; i += sizeof(block)) {
		len = FUNC6(crda->crd_len - i, sizeof(block));
		FUNC3(crp->crp_flags, crp->crp_buf, crda->crd_skip +
		    i, len, block);
		FUNC1(block + len, sizeof(block) - len);
		axf->Update(auth_ctx, block, sizeof(block));
	}

	exf->reinit(kschedule, iv);

	/* Do encryption/decryption with MAC */
	for (i = 0; i < crde->crd_len; i += sizeof(block)) {
		len = FUNC6(crde->crd_len - i, sizeof(block));
		FUNC3(crp->crp_flags, crp->crp_buf, crde->crd_skip +
		    i, len, block);
		FUNC1(block + len, sizeof(block) - len);
		if (crde->crd_flags & CRD_F_ENCRYPT) {
			axf->Update(auth_ctx, block, len);
			exf->encrypt(kschedule, block);
			FUNC2(crp->crp_flags, crp->crp_buf,
			    crde->crd_skip + i, len, block);
		} else {
			exf->decrypt(kschedule, block);
			axf->Update(auth_ctx, block, len);
		}
	}

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
			exf->reinit(kschedule, iv);
			for (i = 0; i < crde->crd_len; i += sizeof(block)) {
				len = FUNC6(crde->crd_len - i, sizeof(block));
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
		FUNC9(auth_ctx, 0, axf->ctxsize);
		FUNC5(auth_ctx, M_CCR);
	}
	crp->crp_etype = error;
	FUNC4(crp);
}