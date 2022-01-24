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
struct cryptop {scalar_t__ crp_ilen; int crp_etype; int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; int /*<<< orphan*/  crp_session; struct cryptodesc* crp_desc; } ;
struct cryptodesc {scalar_t__ crd_alg; int crd_flags; int crd_klen; int /*<<< orphan*/  crd_key; int /*<<< orphan*/  crd_inject; int /*<<< orphan*/  crd_iv; struct cryptodesc* crd_next; } ;
struct cesa_softc {int /*<<< orphan*/  sc_data_dtag; int /*<<< orphan*/  sc_blocked; } ;
struct cesa_session {int cs_ivlen; int cs_klen; int /*<<< orphan*/  cs_key; } ;
struct cesa_request {int /*<<< orphan*/  cr_dmap; TYPE_1__* cr_csd; struct cesa_session* cr_cs; struct cryptodesc* cr_mac; struct cryptodesc* cr_enc; struct cryptop* cr_crp; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  csd_iv; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct cesa_softc*,struct cesa_softc*) ; 
 int CESA_MAX_KEY_LEN ; 
 int CESA_MAX_MKEY_LEN ; 
 scalar_t__ CESA_MAX_REQUEST_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct cesa_softc*,struct cesa_softc*) ; 
 int CRD_F_ENCRYPT ; 
 int CRD_F_IV_EXPLICIT ; 
 int CRD_F_IV_PRESENT ; 
 int CRD_F_KEY_EXPLICIT ; 
 scalar_t__ CRYPTO_AES_CBC ; 
 int CRYPTO_HINT_MORE ; 
 int /*<<< orphan*/  CRYPTO_SYMQ ; 
 void* E2BIG ; 
 int EINVAL ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cesa_request* FUNC4 (struct cesa_softc*) ; 
 int FUNC5 (struct cesa_softc*,struct cesa_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct cesa_softc*,struct cesa_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct cesa_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct cesa_softc*,struct cesa_request*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int FUNC10 (struct cesa_session*) ; 
 int FUNC11 (struct cesa_session*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct cesa_softc*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cryptop*) ; 
 struct cesa_session* FUNC16 (int /*<<< orphan*/ ) ; 
 struct cesa_softc* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cesa_softc* sessions ; 

__attribute__((used)) static int
FUNC19(device_t dev, struct cryptop *crp, int hint)
{
	struct cesa_request *cr;
	struct cesa_session *cs;
	struct cryptodesc *crd;
	struct cryptodesc *enc;
	struct cryptodesc *mac;
	struct cesa_softc *sc;
	int error;

	sc = FUNC17(dev);
	crd = crp->crp_desc;
	enc = NULL;
	mac = NULL;
	error = 0;

	cs = FUNC16(crp->crp_session);

	/* Check and parse input */
	if (crp->crp_ilen > CESA_MAX_REQUEST_SIZE) {
		crp->crp_etype = E2BIG;
		FUNC15(crp);
		return (0);
	}

	if (FUNC9(crd->crd_alg))
		mac = crd;
	else
		enc = crd;

	crd = crd->crd_next;

	if (crd) {
		if (!enc && !FUNC9(crd->crd_alg))
			enc = crd;

		if (!mac && FUNC9(crd->crd_alg))
			mac = crd;

		if (crd->crd_next || !(enc && mac)) {
			crp->crp_etype = EINVAL;
			FUNC15(crp);
			return (0);
		}
	}

	/*
	 * Get request descriptor. Block driver if there is no free
	 * descriptors in pool.
	 */
	cr = FUNC4(sc);
	if (!cr) {
		FUNC0(sc, sc);
		sc->sc_blocked = CRYPTO_SYMQ;
		FUNC1(sc, sc);
		return (ERESTART);
	}

	/* Prepare request */
	cr->cr_crp = crp;
	cr->cr_enc = enc;
	cr->cr_mac = mac;
	cr->cr_cs = cs;

	FUNC0(sc, sessions);
	FUNC12(sc, BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

	if (enc && enc->crd_flags & CRD_F_ENCRYPT) {
		if (enc->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC18(cr->cr_csd->csd_iv, enc->crd_iv, cs->cs_ivlen);
		else
			FUNC2(cr->cr_csd->csd_iv, cs->cs_ivlen, 0);

		if ((enc->crd_flags & CRD_F_IV_PRESENT) == 0)
			FUNC13(crp->crp_flags, crp->crp_buf,
			    enc->crd_inject, cs->cs_ivlen, cr->cr_csd->csd_iv);
	} else if (enc) {
		if (enc->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC18(cr->cr_csd->csd_iv, enc->crd_iv, cs->cs_ivlen);
		else
			FUNC14(crp->crp_flags, crp->crp_buf,
			    enc->crd_inject, cs->cs_ivlen, cr->cr_csd->csd_iv);
	}

	if (enc && enc->crd_flags & CRD_F_KEY_EXPLICIT) {
		if ((enc->crd_klen / 8) <= CESA_MAX_KEY_LEN) {
			cs->cs_klen = enc->crd_klen / 8;
			FUNC18(cs->cs_key, enc->crd_key, cs->cs_klen);
			if (enc->crd_alg == CRYPTO_AES_CBC)
				error = FUNC10(cs);
		} else
			error = E2BIG;
	}

	if (!error && mac && mac->crd_flags & CRD_F_KEY_EXPLICIT) {
		if ((mac->crd_klen / 8) <= CESA_MAX_MKEY_LEN)
			error = FUNC11(cs, mac->crd_alg, mac->crd_key,
			    mac->crd_klen / 8);
		else
			error = E2BIG;
	}

	/* Convert request to chain of TDMA and SA descriptors */
	if (!error)
		error = FUNC5(sc, cr);

	FUNC12(sc, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	FUNC1(sc, sessions);

	if (error) {
		FUNC8(sc, cr);
		crp->crp_etype = error;
		FUNC15(crp);
		return (0);
	}

	FUNC3(sc->sc_data_dtag, cr->cr_dmap, BUS_DMASYNC_PREREAD |
	    BUS_DMASYNC_PREWRITE);

	/* Enqueue request to execution */
	FUNC6(sc, cr);

	/* Start execution, if we have no more requests in queue */
	if ((hint & CRYPTO_HINT_MORE) == 0)
		FUNC7(sc);

	return (0);
}