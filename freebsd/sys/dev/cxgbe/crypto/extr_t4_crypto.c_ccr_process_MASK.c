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
struct cryptop {int crp_etype; int /*<<< orphan*/  crp_session; struct cryptodesc* crp_desc; } ;
struct cryptodesc {int crd_flags; int /*<<< orphan*/  crd_klen; int /*<<< orphan*/  crd_key; int /*<<< orphan*/  crd_alg; struct cryptodesc* crd_next; int /*<<< orphan*/  crd_len; } ;
struct ccr_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/  stats_process_error; int /*<<< orphan*/  stats_inflight; int /*<<< orphan*/  stats_ccm_decrypt; int /*<<< orphan*/  stats_ccm_encrypt; int /*<<< orphan*/  stats_sw_fallback; int /*<<< orphan*/  stats_gcm_decrypt; int /*<<< orphan*/  stats_gcm_encrypt; int /*<<< orphan*/  stats_authenc_decrypt; int /*<<< orphan*/  stats_authenc_encrypt; int /*<<< orphan*/  stats_blkcipher_decrypt; int /*<<< orphan*/  stats_blkcipher_encrypt; int /*<<< orphan*/  stats_hmac; int /*<<< orphan*/  stats_hash; int /*<<< orphan*/  stats_sglist_error; int /*<<< orphan*/  sg_crp; } ;
struct TYPE_4__ {int /*<<< orphan*/  ghash_h; } ;
struct TYPE_3__ {int /*<<< orphan*/  pads; int /*<<< orphan*/  partial_digest_len; int /*<<< orphan*/  auth_hash; } ;
struct ccr_session {int mode; int /*<<< orphan*/  pending; TYPE_2__ gmac; TYPE_1__ hmac; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  AUTHENC 136 
#define  BLKCIPHER 135 
#define  CCM 134 
 int CRD_F_ENCRYPT ; 
 int CRD_F_KEY_EXPLICIT ; 
#define  CRYPTO_AES_CBC 133 
 int /*<<< orphan*/  CRYPTO_AES_CCM_16 ; 
#define  CRYPTO_AES_ICM 132 
 int /*<<< orphan*/  CRYPTO_AES_NIST_GCM_16 ; 
#define  CRYPTO_AES_XTS 131 
 int EINVAL ; 
 int EMSGSIZE ; 
#define  GCM 130 
#define  HASH 129 
#define  HMAC 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccr_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ccr_softc*,struct ccr_session*,struct cryptop*,struct cryptodesc*,struct cryptodesc*) ; 
 int FUNC3 (struct ccr_softc*,struct ccr_session*,struct cryptop*) ; 
 int FUNC4 (struct ccr_softc*,struct ccr_session*,struct cryptop*,struct cryptodesc*,struct cryptodesc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ccr_session*,struct cryptop*,struct cryptodesc*,struct cryptodesc*) ; 
 int FUNC6 (struct ccr_softc*,struct ccr_session*,struct cryptop*,struct cryptodesc*,struct cryptodesc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ccr_session*,struct cryptop*,struct cryptodesc*,struct cryptodesc*) ; 
 int FUNC8 (struct ccr_softc*,struct ccr_session*,struct cryptop*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct cryptop*) ; 
 int /*<<< orphan*/  FUNC10 (struct cryptop*) ; 
 struct ccr_session* FUNC11 (int /*<<< orphan*/ ) ; 
 struct ccr_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(device_t dev, struct cryptop *crp, int hint)
{
	struct ccr_softc *sc;
	struct ccr_session *s;
	struct cryptodesc *crd, *crda, *crde;
	int error;

	if (crp == NULL)
		return (EINVAL);

	crd = crp->crp_desc;
	s = FUNC11(crp->crp_session);
	sc = FUNC12(dev);

	FUNC13(&sc->lock);
	error = FUNC9(sc->sg_crp, crp);
	if (error) {
		sc->stats_sglist_error++;
		goto out;
	}

	switch (s->mode) {
	case HASH:
		error = FUNC8(sc, s, crp);
		if (error == 0)
			sc->stats_hash++;
		break;
	case HMAC:
		if (crd->crd_flags & CRD_F_KEY_EXPLICIT)
			FUNC16(s->hmac.auth_hash,
			    s->hmac.partial_digest_len, crd->crd_key,
			    crd->crd_klen, s->hmac.pads);
		error = FUNC8(sc, s, crp);
		if (error == 0)
			sc->stats_hmac++;
		break;
	case BLKCIPHER:
		if (crd->crd_flags & CRD_F_KEY_EXPLICIT) {
			error = FUNC0(crd->crd_alg,
			    crd->crd_klen);
			if (error)
				break;
			FUNC1(s, crd->crd_alg, crd->crd_key,
			    crd->crd_klen);
		}
		error = FUNC3(sc, s, crp);
		if (error == 0) {
			if (crd->crd_flags & CRD_F_ENCRYPT)
				sc->stats_blkcipher_encrypt++;
			else
				sc->stats_blkcipher_decrypt++;
		}
		break;
	case AUTHENC:
		error = 0;
		switch (crd->crd_alg) {
		case CRYPTO_AES_CBC:
		case CRYPTO_AES_ICM:
		case CRYPTO_AES_XTS:
			/* Only encrypt-then-authenticate supported. */
			crde = crd;
			crda = crd->crd_next;
			if (!(crde->crd_flags & CRD_F_ENCRYPT)) {
				error = EINVAL;
				break;
			}
			break;
		default:
			crda = crd;
			crde = crd->crd_next;
			if (crde->crd_flags & CRD_F_ENCRYPT) {
				error = EINVAL;
				break;
			}
			break;
		}
		if (error)
			break;
		if (crda->crd_flags & CRD_F_KEY_EXPLICIT)
			FUNC16(s->hmac.auth_hash,
			    s->hmac.partial_digest_len, crda->crd_key,
			    crda->crd_klen, s->hmac.pads);
		if (crde->crd_flags & CRD_F_KEY_EXPLICIT) {
			error = FUNC0(crde->crd_alg,
			    crde->crd_klen);
			if (error)
				break;
			FUNC1(s, crde->crd_alg, crde->crd_key,
			    crde->crd_klen);
		}
		error = FUNC2(sc, s, crp, crda, crde);
		if (error == 0) {
			if (crde->crd_flags & CRD_F_ENCRYPT)
				sc->stats_authenc_encrypt++;
			else
				sc->stats_authenc_decrypt++;
		}
		break;
	case GCM:
		error = 0;
		if (crd->crd_alg == CRYPTO_AES_NIST_GCM_16) {
			crde = crd;
			crda = crd->crd_next;
		} else {
			crda = crd;
			crde = crd->crd_next;
		}
		if (crda->crd_flags & CRD_F_KEY_EXPLICIT)
			FUNC15(crda->crd_key, crda->crd_klen,
			    s->gmac.ghash_h);
		if (crde->crd_flags & CRD_F_KEY_EXPLICIT) {
			error = FUNC0(crde->crd_alg,
			    crde->crd_klen);
			if (error)
				break;
			FUNC1(s, crde->crd_alg, crde->crd_key,
			    crde->crd_klen);
		}
		if (crde->crd_len == 0) {
			FUNC14(&sc->lock);
			FUNC7(s, crp, crda, crde);
			return (0);
		}
		error = FUNC6(sc, s, crp, crda, crde);
		if (error == EMSGSIZE) {
			sc->stats_sw_fallback++;
			FUNC14(&sc->lock);
			FUNC7(s, crp, crda, crde);
			return (0);
		}
		if (error == 0) {
			if (crde->crd_flags & CRD_F_ENCRYPT)
				sc->stats_gcm_encrypt++;
			else
				sc->stats_gcm_decrypt++;
		}
		break;
	case CCM:
		error = 0;
		if (crd->crd_alg == CRYPTO_AES_CCM_16) {
			crde = crd;
			crda = crd->crd_next;
		} else {
			crda = crd;
			crde = crd->crd_next;
		}
		if (crde->crd_flags & CRD_F_KEY_EXPLICIT) {
			error = FUNC0(crde->crd_alg,
			    crde->crd_klen);
			if (error)
				break;
			FUNC1(s, crde->crd_alg, crde->crd_key,
			    crde->crd_klen);
		}
		error = FUNC4(sc, s, crp, crda, crde);
		if (error == EMSGSIZE) {
			sc->stats_sw_fallback++;
			FUNC14(&sc->lock);
			FUNC5(s, crp, crda, crde);
			return (0);
		}
		if (error == 0) {
			if (crde->crd_flags & CRD_F_ENCRYPT)
				sc->stats_ccm_encrypt++;
			else
				sc->stats_ccm_decrypt++;
		}
		break;
	}

	if (error == 0) {
		s->pending++;
		sc->stats_inflight++;
	} else
		sc->stats_process_error++;

out:
	FUNC14(&sc->lock);

	if (error) {
		crp->crp_etype = error;
		FUNC10(crp);
	}

	return (0);
}