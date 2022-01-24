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
struct sec_softc {int sc_version; int /*<<< orphan*/  sc_blocked; scalar_t__ sc_shutdown; } ;
struct sec_session {int ss_ivlen; int ss_klen; int ss_mklen; TYPE_1__* ss_eu; int /*<<< orphan*/  ss_mkey; int /*<<< orphan*/  ss_key; } ;
struct sec_desc {TYPE_2__* sd_desc; struct cryptop* sd_crp; scalar_t__ sd_error; scalar_t__ sd_lt_used; } ;
struct cryptop {scalar_t__ crp_ilen; int crp_etype; int crp_flags; int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_session; } ;
struct cryptodesc {int crd_flags; int crd_klen; int /*<<< orphan*/  crd_key; int /*<<< orphan*/  crd_inject; int /*<<< orphan*/  crd_iv; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int shd_dn; int /*<<< orphan*/  shd_mkey; int /*<<< orphan*/  shd_key; int /*<<< orphan*/  shd_iv; } ;
struct TYPE_3__ {int (* sem_make_desc ) (struct sec_softc*,struct sec_session*,struct sec_desc*,struct cryptop*,int) ;} ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int CRD_F_ENCRYPT ; 
 int CRD_F_IV_EXPLICIT ; 
 int CRD_F_IV_PRESENT ; 
 int CRD_F_KEY_EXPLICIT ; 
 int CRYPTO_F_IMBUF ; 
 int CRYPTO_F_IOV ; 
 int CRYPTO_HINT_MORE ; 
 int /*<<< orphan*/  CRYPTO_SYMQ ; 
 void* E2BIG ; 
 int EINVAL ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (struct sec_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sec_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sec_softc*,struct sec_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct sec_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sec_desc*,int) ; 
 scalar_t__ FUNC5 (struct sec_softc*) ; 
 struct sec_desc* FUNC6 (struct sec_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ SEC_MAX_DMA_BLOCK_SIZE ; 
 int SEC_MAX_KEY_LEN ; 
 int SEC_MBUF ; 
 int SEC_MEMORY ; 
 int /*<<< orphan*/  FUNC8 (struct sec_softc*) ; 
 int SEC_UIO ; 
 int /*<<< orphan*/  FUNC9 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cryptop*) ; 
 struct sec_session* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  descriptors ; 
 struct sec_softc* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sec_softc*) ; 
 scalar_t__ FUNC18 (struct cryptop*,struct cryptodesc**,struct cryptodesc**) ; 
 int FUNC19 (struct sec_softc*,struct sec_session*,struct sec_desc*,struct cryptop*,int) ; 

__attribute__((used)) static int
FUNC20(device_t dev, struct cryptop *crp, int hint)
{
	struct sec_softc *sc = FUNC15(dev);
	struct sec_desc *desc = NULL;
	struct cryptodesc *mac, *enc;
	struct sec_session *ses;
	int buftype, error = 0;

	ses = FUNC14(crp->crp_session);

	/* Check for input length */
	if (crp->crp_ilen > SEC_MAX_DMA_BLOCK_SIZE) {
		crp->crp_etype = E2BIG;
		FUNC13(crp);
		return (0);
	}

	/* Get descriptors */
	if (FUNC18(crp, &enc, &mac)) {
		crp->crp_etype = EINVAL;
		FUNC13(crp);
		return (0);
	}

	FUNC7(sc, descriptors);
	FUNC3(sc, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	/* Block driver if there is no free descriptors or we are going down */
	if (FUNC5(sc) == 0 || sc->sc_shutdown) {
		sc->sc_blocked |= CRYPTO_SYMQ;
		FUNC9(sc, descriptors);
		return (ERESTART);
	}

	/* Prepare descriptor */
	desc = FUNC6(sc);
	desc->sd_lt_used = 0;
	desc->sd_error = 0;
	desc->sd_crp = crp;

	if (crp->crp_flags & CRYPTO_F_IOV)
		buftype = SEC_UIO;
	else if (crp->crp_flags & CRYPTO_F_IMBUF)
		buftype = SEC_MBUF;
	else
		buftype = SEC_MEMORY;

	if (enc && enc->crd_flags & CRD_F_ENCRYPT) {
		if (enc->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC16(desc->sd_desc->shd_iv, enc->crd_iv,
			    ses->ss_ivlen);
		else
			FUNC10(desc->sd_desc->shd_iv, ses->ss_ivlen, 0);

		if ((enc->crd_flags & CRD_F_IV_PRESENT) == 0)
			FUNC11(crp->crp_flags, crp->crp_buf,
			    enc->crd_inject, ses->ss_ivlen,
			    desc->sd_desc->shd_iv);
	} else if (enc) {
		if (enc->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC16(desc->sd_desc->shd_iv, enc->crd_iv,
			    ses->ss_ivlen);
		else
			FUNC12(crp->crp_flags, crp->crp_buf,
			    enc->crd_inject, ses->ss_ivlen,
			    desc->sd_desc->shd_iv);
	}

	if (enc && enc->crd_flags & CRD_F_KEY_EXPLICIT) {
		if ((enc->crd_klen / 8) <= SEC_MAX_KEY_LEN) {
			ses->ss_klen = enc->crd_klen / 8;
			FUNC16(ses->ss_key, enc->crd_key, ses->ss_klen);
		} else
			error = E2BIG;
	}

	if (!error && mac && mac->crd_flags & CRD_F_KEY_EXPLICIT) {
		if ((mac->crd_klen / 8) <= SEC_MAX_KEY_LEN) {
			ses->ss_mklen = mac->crd_klen / 8;
			FUNC16(ses->ss_mkey, mac->crd_key, ses->ss_mklen);
		} else
			error = E2BIG;
	}

	if (!error) {
		FUNC16(desc->sd_desc->shd_key, ses->ss_key, ses->ss_klen);
		FUNC16(desc->sd_desc->shd_mkey, ses->ss_mkey, ses->ss_mklen);

		error = ses->ss_eu->sem_make_desc(sc, ses, desc, crp, buftype);
	}

	if (error) {
		FUNC1(desc);
		FUNC2(sc, desc);
		FUNC8(sc);
		FUNC9(sc, descriptors);
		crp->crp_etype = error;
		FUNC13(crp);
		return (0);
	}

	/*
	 * Skip DONE interrupt if this is not last request in burst, but only
	 * if we are running on SEC 3.X. On SEC 2.X we have to enable DONE
	 * signaling on each descriptor.
	 */
	if ((hint & CRYPTO_HINT_MORE) && sc->sc_version == 3)
		desc->sd_desc->shd_dn = 0;
	else
		desc->sd_desc->shd_dn = 1;

	FUNC3(sc, BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	FUNC4(desc, BUS_DMASYNC_POSTREAD |
	    BUS_DMASYNC_POSTWRITE);
	FUNC0(sc);
	FUNC9(sc, descriptors);

	/* Enqueue ready descriptors in hardware */
	FUNC17(sc);

	return (0);
}