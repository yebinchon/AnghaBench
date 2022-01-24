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
struct TYPE_2__ {int authDataLength; int cryptDataLength; } ;
union authctx {TYPE_1__ aes_cbc_mac_ctx; } ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  union authctx u_char ;
struct swcr_session {struct swcr_data* swcr_algorithms; } ;
struct swcr_data {scalar_t__ sw_alg; int /*<<< orphan*/  sw_kschedule; int /*<<< orphan*/  sw_ictx; struct auth_hash* sw_axf; struct enc_xform* sw_exf; } ;
struct enc_xform {int /*<<< orphan*/  (* decrypt ) (int /*<<< orphan*/ ,union authctx*) ;int /*<<< orphan*/  (* reinit ) (int /*<<< orphan*/ ,union authctx*) ;int /*<<< orphan*/  (* encrypt_multi ) (int /*<<< orphan*/ ,union authctx*,int) ;int /*<<< orphan*/  (* encrypt ) (int /*<<< orphan*/ ,union authctx*) ;} ;
struct cryptop {int /*<<< orphan*/  crp_flags; struct cryptodesc* crp_desc; int /*<<< orphan*/  crp_session; int /*<<< orphan*/  crp_buf; } ;
struct cryptodesc {scalar_t__ crd_alg; int crd_flags; scalar_t__ crd_klen; int crd_len; scalar_t__ crd_inject; scalar_t__ crd_skip; int /*<<< orphan*/  crd_iv; struct cryptodesc* crd_next; } ;
struct auth_hash {int ctxsize; int blocksize; int hashsize; int /*<<< orphan*/  (* Final ) (union authctx*,union authctx*) ;int /*<<< orphan*/  (* Update ) (union authctx*,union authctx*,int) ;int /*<<< orphan*/  (* Reinit ) (union authctx*,union authctx*,int) ;} ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  blkbuf ;

/* Variables and functions */
 int AALG_MAX_RESULT_LEN ; 
 int AES_CCM_IV_LEN ; 
 int CRD_F_ENCRYPT ; 
 int CRD_F_IV_EXPLICIT ; 
 int CRD_F_IV_PRESENT ; 
#define  CRYPTO_AES_128_NIST_GMAC 134 
#define  CRYPTO_AES_192_NIST_GMAC 133 
#define  CRYPTO_AES_256_NIST_GMAC 132 
#define  CRYPTO_AES_CCM_16 131 
#define  CRYPTO_AES_CCM_CBC_MAC 130 
#define  CRYPTO_AES_NIST_GCM_16 129 
#define  CRYPTO_AES_NIST_GMAC 128 
 int EALG_MAX_BLOCK_LEN ; 
 int EBADMSG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (union authctx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union authctx*,int) ; 
 int /*<<< orphan*/  FUNC4 (union authctx*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,union authctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,union authctx*) ; 
 struct swcr_session* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (struct swcr_data*) ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (union authctx*,union authctx*,int) ; 
 int /*<<< orphan*/  FUNC13 (union authctx*,union authctx*,int) ; 
 int /*<<< orphan*/  FUNC14 (union authctx*,union authctx*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,union authctx*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,union authctx*) ; 
 int /*<<< orphan*/  FUNC17 (union authctx*,union authctx*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,union authctx*) ; 
 int /*<<< orphan*/  FUNC19 (union authctx*,union authctx*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,union authctx*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,union authctx*) ; 
 int /*<<< orphan*/  FUNC22 (union authctx*,union authctx*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,union authctx*) ; 
 int /*<<< orphan*/  FUNC24 (union authctx*,union authctx*,int) ; 
 int FUNC25 (union authctx*,union authctx*,int) ; 

__attribute__((used)) static int
FUNC26(struct cryptop *crp)
{
	uint32_t blkbuf[FUNC8(EALG_MAX_BLOCK_LEN, sizeof(uint32_t))];
	u_char *blk = (u_char *)blkbuf;
	u_char aalg[AALG_MAX_RESULT_LEN];
	u_char uaalg[AALG_MAX_RESULT_LEN];
	u_char iv[EALG_MAX_BLOCK_LEN];
	union authctx ctx;
	struct swcr_session *ses;
	struct cryptodesc *crd, *crda = NULL, *crde = NULL;
	struct swcr_data *sw, *swa, *swe = NULL;
	struct auth_hash *axf = NULL;
	struct enc_xform *exf = NULL;
	caddr_t buf = (caddr_t)crp->crp_buf;
	uint32_t *blkp;
	int aadlen, blksz, i, ivlen, len, iskip, oskip, r;
	int isccm = 0;

	ivlen = blksz = iskip = oskip = 0;

	ses = FUNC7(crp->crp_session);

	for (crd = crp->crp_desc; crd; crd = crd->crd_next) {
		for (i = 0; i < FUNC10(ses->swcr_algorithms) &&
		    ses->swcr_algorithms[i].sw_alg != crd->crd_alg; i++)
			;
		if (i == FUNC10(ses->swcr_algorithms))
			return (EINVAL);

		sw = &ses->swcr_algorithms[i];
		switch (sw->sw_alg) {
		case CRYPTO_AES_CCM_16:
		case CRYPTO_AES_NIST_GCM_16:
		case CRYPTO_AES_NIST_GMAC:
			swe = sw;
			crde = crd;
			exf = swe->sw_exf;
			/* AES_CCM_IV_LEN and AES_GCM_IV_LEN are both 12 */
			ivlen = AES_CCM_IV_LEN;
			break;
		case CRYPTO_AES_CCM_CBC_MAC:
			isccm = 1;
			/* FALLTHROUGH */
		case CRYPTO_AES_128_NIST_GMAC:
		case CRYPTO_AES_192_NIST_GMAC:
		case CRYPTO_AES_256_NIST_GMAC:
			swa = sw;
			crda = crd;
			axf = swa->sw_axf;
			if (swa->sw_ictx == 0)
				return (EINVAL);
			FUNC3(swa->sw_ictx, &ctx, axf->ctxsize);
			blksz = axf->blocksize;
			break;
		default:
			return (EINVAL);
		}
	}
	if (crde == NULL || crda == NULL)
		return (EINVAL);
	/*
	 * We need to make sure that the auth algorithm matches the
	 * encr algorithm.  Specifically, for AES-GCM must go with
	 * AES NIST GMAC, and AES-CCM must go with CBC-MAC.
	 */
	if (crde->crd_alg == CRYPTO_AES_NIST_GCM_16) {
		switch (crda->crd_alg) {
		case CRYPTO_AES_128_NIST_GMAC:
		case CRYPTO_AES_192_NIST_GMAC:
		case CRYPTO_AES_256_NIST_GMAC:
			break;	/* Good! */
		default:
			return (EINVAL);	/* Not good! */
		}
	} else if (crde->crd_alg == CRYPTO_AES_CCM_16 &&
	    crda->crd_alg != CRYPTO_AES_CCM_CBC_MAC)
		return (EINVAL);

	if ((crde->crd_alg == CRYPTO_AES_NIST_GCM_16 ||
	     crde->crd_alg == CRYPTO_AES_CCM_16) &&
	    (crde->crd_flags & CRD_F_IV_EXPLICIT) == 0)
		return (EINVAL);

	if (crde->crd_klen != crda->crd_klen)
		return (EINVAL);

	/* Initialize the IV */
	if (crde->crd_flags & CRD_F_ENCRYPT) {
		/* IV explicitly provided ? */
		if (crde->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC3(crde->crd_iv, iv, ivlen);
		else
			FUNC2(iv, ivlen, 0);

		/* Do we need to write the IV */
		if (!(crde->crd_flags & CRD_F_IV_PRESENT))
			FUNC5(crp->crp_flags, buf, crde->crd_inject,
			    ivlen, iv);

	} else {	/* Decryption */
			/* IV explicitly provided ? */
		if (crde->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC3(crde->crd_iv, iv, ivlen);
		else {
			/* Get IV off buf */
			FUNC6(crp->crp_flags, buf, crde->crd_inject,
			    ivlen, iv);
		}
	}

	if (swa->sw_alg == CRYPTO_AES_CCM_CBC_MAC) {
		/*
		 * AES CCM-CBC needs to know the length of
		 * both the auth data, and payload data, before
		 * doing the auth computation.
		 */
		ctx.aes_cbc_mac_ctx.authDataLength = crda->crd_len;
		ctx.aes_cbc_mac_ctx.cryptDataLength = crde->crd_len;
	}
	/* Supply MAC with IV */
	if (axf->Reinit)
		axf->Reinit(&ctx, iv, ivlen);

	/* Supply MAC with AAD */
	aadlen = crda->crd_len;

	for (i = iskip; i < crda->crd_len; i += blksz) {
		len = FUNC1(crda->crd_len - i, blksz - oskip);
		FUNC6(crp->crp_flags, buf, crda->crd_skip + i, len,
		    blk + oskip);
		FUNC4(blk + len + oskip, blksz - len - oskip);
		axf->Update(&ctx, blk, blksz);
		oskip = 0; /* reset initial output offset */
	}

	if (exf->reinit)
		exf->reinit(swe->sw_kschedule, iv);

	/* Do encryption/decryption with MAC */
	for (i = 0; i < crde->crd_len; i += len) {
		if (exf->encrypt_multi != NULL) {
			len = FUNC11(crde->crd_len - i, blksz);
			if (len == 0)
				len = blksz;
			else
				len = FUNC1(len, sizeof(blkbuf));
		} else
			len = blksz;
		len = FUNC1(crde->crd_len - i, len);
		if (len < blksz)
			FUNC4(blk, blksz);
		FUNC6(crp->crp_flags, buf, crde->crd_skip + i, len,
		    blk);
		/*
		 * One of the problems with CCM+CBC is that the authentication
		 * is done on the unecncrypted data.  As a result, we have
		 * to do the authentication update at different times,
		 * depending on whether it's CCM or not.
		 */
		if (crde->crd_flags & CRD_F_ENCRYPT) {
			if (isccm)
				axf->Update(&ctx, blk, len);
			if (exf->encrypt_multi != NULL)
				exf->encrypt_multi(swe->sw_kschedule, blk,
				    len);
			else
				exf->encrypt(swe->sw_kschedule, blk);
			if (!isccm)
				axf->Update(&ctx, blk, len);
			FUNC5(crp->crp_flags, buf,
			    crde->crd_skip + i, len, blk);
		} else {
			if (isccm) {
				FUNC0(exf->encrypt_multi == NULL,
				    ("assume CCM is single-block only"));
				exf->decrypt(swe->sw_kschedule, blk);
			}
			axf->Update(&ctx, blk, len);
		}
	}

	/* Do any required special finalization */
	switch (crda->crd_alg) {
		case CRYPTO_AES_128_NIST_GMAC:
		case CRYPTO_AES_192_NIST_GMAC:
		case CRYPTO_AES_256_NIST_GMAC:
			/* length block */
			FUNC4(blk, blksz);
			blkp = (uint32_t *)blk + 1;
			*blkp = FUNC9(aadlen * 8);
			blkp = (uint32_t *)blk + 3;
			*blkp = FUNC9(crde->crd_len * 8);
			axf->Update(&ctx, blk, blksz);
			break;
	}

	/* Finalize MAC */
	axf->Final(aalg, &ctx);

	/* Validate tag */
	if (!(crde->crd_flags & CRD_F_ENCRYPT)) {
		FUNC6(crp->crp_flags, buf, crda->crd_inject,
		    axf->hashsize, uaalg);

		r = FUNC25(aalg, uaalg, axf->hashsize);
		if (r == 0) {
			/* tag matches, decrypt data */
			if (isccm) {
				FUNC0(exf->reinit != NULL,
				    ("AES-CCM reinit function must be set"));
				exf->reinit(swe->sw_kschedule, iv);
			}
			for (i = 0; i < crde->crd_len; i += blksz) {
				len = FUNC1(crde->crd_len - i, blksz);
				if (len < blksz)
					FUNC4(blk, blksz);
				FUNC6(crp->crp_flags, buf,
				    crde->crd_skip + i, len, blk);
				exf->decrypt(swe->sw_kschedule, blk);
				FUNC5(crp->crp_flags, buf,
				    crde->crd_skip + i, len, blk);
			}
		} else
			return (EBADMSG);
	} else {
		/* Inject the authentication data */
		FUNC5(crp->crp_flags, buf, crda->crd_inject,
		    axf->hashsize, aalg);
	}

	return (0);
}