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
struct TYPE_2__ {struct glxsb_session* to_ses; struct cryptop* to_crp; struct cryptodesc* to_enccrd; struct cryptodesc* to_maccrd; } ;
struct glxsb_softc {scalar_t__ sc_task_count; int /*<<< orphan*/  sc_cryptotask; int /*<<< orphan*/  sc_tq; int /*<<< orphan*/  sc_task_mtx; TYPE_1__ sc_to; } ;
struct glxsb_session {int dummy; } ;
struct cryptop {int crp_etype; int /*<<< orphan*/  crp_session; struct cryptodesc* crp_desc; int /*<<< orphan*/ * crp_callback; } ;
struct cryptodesc {int crd_alg; int crd_len; struct cryptodesc* crd_next; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AES_BLOCK_LEN ; 
#define  CRYPTO_AES_CBC 135 
#define  CRYPTO_MD5_HMAC 134 
#define  CRYPTO_NULL_HMAC 133 
#define  CRYPTO_RIPEMD160_HMAC 132 
#define  CRYPTO_SHA1_HMAC 131 
#define  CRYPTO_SHA2_256_HMAC 130 
#define  CRYPTO_SHA2_384_HMAC 129 
#define  CRYPTO_SHA2_512_HMAC 128 
 int EINVAL ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (struct cryptop*) ; 
 struct glxsb_session* FUNC1 (int /*<<< orphan*/ ) ; 
 struct glxsb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev, struct cryptop *crp, int hint)
{
	struct glxsb_softc *sc = FUNC2(dev);
	struct glxsb_session *ses;
	struct cryptodesc *crd, *enccrd, *maccrd;
	int error = 0;

	enccrd = maccrd = NULL;

	/* Sanity check. */
	if (crp == NULL)
		return (EINVAL);

	if (crp->crp_callback == NULL || crp->crp_desc == NULL) {
		error = EINVAL;
		goto fail;
	}

	for (crd = crp->crp_desc; crd != NULL; crd = crd->crd_next) {
		switch (crd->crd_alg) {
		case CRYPTO_NULL_HMAC:
		case CRYPTO_MD5_HMAC:
		case CRYPTO_SHA1_HMAC:
		case CRYPTO_RIPEMD160_HMAC:
		case CRYPTO_SHA2_256_HMAC:
		case CRYPTO_SHA2_384_HMAC:
		case CRYPTO_SHA2_512_HMAC:
			if (maccrd != NULL) {
				error = EINVAL;
				goto fail;
			}
			maccrd = crd;
			break;
		case CRYPTO_AES_CBC:
			if (enccrd != NULL) {
				error = EINVAL;
				goto fail;
			}
			enccrd = crd;
			break;
		default:
			error = EINVAL;
			goto fail;
		}
	}

	if (enccrd == NULL || enccrd->crd_len % AES_BLOCK_LEN != 0) {
		error = EINVAL;
		goto fail;
	}

	ses = FUNC1(crp->crp_session);

	FUNC3(&sc->sc_task_mtx);
	if (sc->sc_task_count != 0) {
		FUNC4(&sc->sc_task_mtx);
		return (ERESTART);
	}
	sc->sc_task_count++;

	sc->sc_to.to_maccrd = maccrd;
	sc->sc_to.to_enccrd = enccrd;
	sc->sc_to.to_crp = crp;
	sc->sc_to.to_ses = ses;
	FUNC4(&sc->sc_task_mtx);

	FUNC5(sc->sc_tq, &sc->sc_cryptotask);
	return(0);

fail:
	crp->crp_etype = error;
	FUNC0(crp);
	return (error);
}