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
struct xlp_sec_softc {int /*<<< orphan*/  sc_needwakeup; } ;
struct xlp_sec_session {int /*<<< orphan*/  hs_mlen; } ;
struct xlp_sec_command {unsigned int nsegs; int hashsrc; struct cryptodesc* enccrd; int /*<<< orphan*/  cipherlen; int /*<<< orphan*/  cipheroff; scalar_t__ hmacpad; struct cryptodesc* maccrd; int /*<<< orphan*/  hashlen; int /*<<< orphan*/  hashoff; scalar_t__ ivoff; int /*<<< orphan*/  ivlen; int /*<<< orphan*/  hash_dst_len; struct xlp_sec_session* ses; struct cryptop* crp; } ;
struct cryptop {int crp_etype; struct cryptodesc* crp_desc; int /*<<< orphan*/  crp_session; int /*<<< orphan*/ * crp_callback; } ;
struct cryptodesc {int crd_flags; scalar_t__ crd_alg; int /*<<< orphan*/  crd_len; int /*<<< orphan*/  crd_skip; scalar_t__ crd_inject; struct cryptodesc* crd_next; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CRD_F_ENCRYPT ; 
 int CRD_F_IV_EXPLICIT ; 
 int CRD_F_IV_PRESENT ; 
 scalar_t__ CRYPTO_3DES_CBC ; 
 scalar_t__ CRYPTO_AES_CBC ; 
 scalar_t__ CRYPTO_ARC4 ; 
 scalar_t__ CRYPTO_DES_CBC ; 
 scalar_t__ CRYPTO_MD5 ; 
 scalar_t__ CRYPTO_MD5_HMAC ; 
 scalar_t__ CRYPTO_SHA1 ; 
 scalar_t__ CRYPTO_SHA1_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SYMQ ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERESTART ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 scalar_t__ creditleft ; 
 int /*<<< orphan*/  FUNC0 (struct cryptop*) ; 
 struct xlp_sec_session* FUNC1 (int /*<<< orphan*/ ) ; 
 struct xlp_sec_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct xlp_sec_command* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct xlp_sec_softc*,struct xlp_sec_command*) ; 
 int FUNC5 (struct xlp_sec_softc*,struct xlp_sec_command*) ; 
 int FUNC6 (struct xlp_sec_softc*,struct xlp_sec_command*) ; 
 int FUNC7 (struct xlp_sec_command*) ; 
 int FUNC8 (struct xlp_sec_command*) ; 
 int FUNC9 (struct xlp_sec_command*,unsigned int) ; 
 int FUNC10 (struct xlp_sec_softc*,struct xlp_sec_command*,struct cryptodesc*) ; 
 int /*<<< orphan*/  FUNC11 (struct xlp_sec_command*) ; 
 int FUNC12 (struct cryptop*,unsigned int*) ; 

__attribute__((used)) static int
FUNC13(device_t dev, struct cryptop *crp, int hint)
{
	struct xlp_sec_softc *sc = FUNC2(dev);
	struct xlp_sec_command *cmd = NULL;
	int err = -1, ret = 0;
	struct cryptodesc *crd1, *crd2;
	struct xlp_sec_session *ses;
	unsigned int nsegs = 0;

	if (crp == NULL || crp->crp_callback == NULL) {
		return (EINVAL);
	}
	if (sc == NULL) {
		err = EINVAL;
		goto errout;
	}
	ses = FUNC1(crp->crp_session);

	if ((cmd = FUNC3(sizeof(struct xlp_sec_command), M_DEVBUF,
	    M_NOWAIT | M_ZERO)) == NULL) {
		err = ENOMEM;
		goto errout;
	}

	cmd->crp = crp;
	cmd->ses = ses;
	cmd->hash_dst_len = ses->hs_mlen;

	if ((crd1 = crp->crp_desc) == NULL) {
		err = EINVAL;
		goto errout;
	}
	crd2 = crd1->crd_next;

	if ((ret = FUNC12(crp, &nsegs)) != 0) {
		err = EINVAL;
		goto errout;
	}
	if (((crd1 != NULL) && (crd1->crd_flags & CRD_F_IV_EXPLICIT)) ||
	    ((crd2 != NULL) && (crd2->crd_flags & CRD_F_IV_EXPLICIT))) {
		/* Since IV is given as separate segment to avoid copy */
		nsegs += 1;
	}
	cmd->nsegs = nsegs;

	if ((err = FUNC9(cmd, nsegs)) != 0)
		goto errout;

	if ((crd1 != NULL) && (crd2 == NULL)) {
		if (crd1->crd_alg == CRYPTO_DES_CBC ||
		    crd1->crd_alg == CRYPTO_3DES_CBC ||
		    crd1->crd_alg == CRYPTO_AES_CBC ||
		    crd1->crd_alg == CRYPTO_ARC4) {
			cmd->enccrd = crd1;
			cmd->maccrd = NULL;
			if ((ret = FUNC7(cmd)) != 0) {
				err = EINVAL;
				goto errout;
			}
			if (crd1->crd_flags & CRD_F_IV_EXPLICIT)
				cmd->cipheroff = cmd->ivlen;
			else
				cmd->cipheroff = cmd->enccrd->crd_skip;
			cmd->cipherlen = cmd->enccrd->crd_len;
			if (crd1->crd_flags & CRD_F_IV_PRESENT)
				cmd->ivoff  = 0;
			else
				cmd->ivoff  = cmd->enccrd->crd_inject;
			if ((err = FUNC10(sc, cmd, cmd->enccrd)) != 0)
				goto errout;
			if ((err = FUNC4(sc, cmd)) != 0)
				goto errout;
		} else if (crd1->crd_alg == CRYPTO_MD5_HMAC ||
		    crd1->crd_alg == CRYPTO_SHA1_HMAC ||
		    crd1->crd_alg == CRYPTO_SHA1 ||
		    crd1->crd_alg == CRYPTO_MD5) {
			cmd->enccrd = NULL;
			cmd->maccrd = crd1;
			if ((ret = FUNC8(cmd)) != 0) {
				err = EINVAL;
				goto errout;
			}
			cmd->hashoff = cmd->maccrd->crd_skip;
			cmd->hashlen = cmd->maccrd->crd_len;
			cmd->hmacpad = 0;
			cmd->hashsrc = 0;
			if ((err = FUNC6(sc, cmd)) != 0)
				goto errout;
		} else {
			err = EINVAL;
			goto errout;
		}
	} else if( (crd1 != NULL) && (crd2 != NULL) ) {
		if ((crd1->crd_alg == CRYPTO_MD5_HMAC ||
		    crd1->crd_alg == CRYPTO_SHA1_HMAC ||
		    crd1->crd_alg == CRYPTO_MD5 ||
		    crd1->crd_alg == CRYPTO_SHA1) &&
		    (crd2->crd_alg == CRYPTO_DES_CBC ||
		    crd2->crd_alg == CRYPTO_3DES_CBC ||
		    crd2->crd_alg == CRYPTO_AES_CBC ||
		    crd2->crd_alg == CRYPTO_ARC4)) {
			cmd->maccrd = crd1;
			cmd->enccrd = crd2;
		} else if ((crd1->crd_alg == CRYPTO_DES_CBC ||
		    crd1->crd_alg == CRYPTO_ARC4 ||
		    crd1->crd_alg == CRYPTO_3DES_CBC ||
		    crd1->crd_alg == CRYPTO_AES_CBC) &&
		    (crd2->crd_alg == CRYPTO_MD5_HMAC ||
		    crd2->crd_alg == CRYPTO_SHA1_HMAC ||
		    crd2->crd_alg == CRYPTO_MD5 ||
		    crd2->crd_alg == CRYPTO_SHA1)) {
			cmd->enccrd = crd1;
			cmd->maccrd = crd2;
		} else {
			err = EINVAL;
			goto errout;
		}
		if ((ret = FUNC7(cmd)) != 0) {
			err = EINVAL;
			goto errout;
		}
		if ((ret = FUNC8(cmd)) != 0) {
			err = EINVAL;
			goto errout;
		}
		cmd->ivoff  = cmd->enccrd->crd_inject;
		cmd->hashoff = cmd->maccrd->crd_skip;
		cmd->hashlen = cmd->maccrd->crd_len;
		cmd->hmacpad = 0;
		if (cmd->enccrd->crd_flags & CRD_F_ENCRYPT)
			cmd->hashsrc = 1;
		else
			cmd->hashsrc = 0;
		cmd->cipheroff = cmd->enccrd->crd_skip;
		cmd->cipherlen = cmd->enccrd->crd_len;
		if ((err = FUNC10(sc, cmd, cmd->enccrd)) != 0)
			goto errout;
		if ((err = FUNC5(sc, cmd)) != 0)
			goto errout;
	} else {
		err = EINVAL;
		goto errout;
	}
	return (0);
errout:
	FUNC11(cmd);
	if (err == ERESTART) {
		sc->sc_needwakeup |= CRYPTO_SYMQ;
		creditleft = 0;
		return (err);
	}
	crp->crp_etype = err;
	FUNC0(crp);
	return (err);
}