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
typedef  int u_int32_t ;
struct ath_spectral_state {int spectral_enable_after_reset; int /*<<< orphan*/  spectral_state; } ;
struct ath_softc {int sc_dospectral; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_ah; struct ath_spectral_state* sc_spectral; } ;
struct ath_diag {unsigned int ad_id; int ad_in_size; int ad_out_size; int /*<<< orphan*/  ad_out_data; int /*<<< orphan*/  ad_in_data; } ;
typedef  int /*<<< orphan*/  peout ;
typedef  int /*<<< orphan*/  HAL_SPECTRAL_PARAM ;

/* Variables and functions */
 int ATH_DIAG_DYN ; 
 unsigned int ATH_DIAG_ID ; 
 int ATH_DIAG_IN ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_ZERO ; 
#define  SPECTRAL_CONTROL_DISABLE 134 
#define  SPECTRAL_CONTROL_ENABLE 133 
#define  SPECTRAL_CONTROL_ENABLE_AT_RESET 132 
#define  SPECTRAL_CONTROL_GET_PARAMS 131 
#define  SPECTRAL_CONTROL_SET_PARAMS 130 
#define  SPECTRAL_CONTROL_START 129 
#define  SPECTRAL_CONTROL_STOP 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC10 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC16(struct ath_softc *sc, struct ath_diag *ad)
{
	unsigned int id = ad->ad_id & ATH_DIAG_ID;
	void *indata = NULL;
	void *outdata = NULL;
	u_int32_t insize = ad->ad_in_size;
	u_int32_t outsize = ad->ad_out_size;
	int error = 0;
	HAL_SPECTRAL_PARAM peout;
	HAL_SPECTRAL_PARAM *pe;
	struct ath_spectral_state *ss = sc->sc_spectral;
	int val;

	if (! FUNC6(sc->sc_ah))
		return (EINVAL);

	FUNC0(sc);
	FUNC8(sc, HAL_PM_AWAKE);
	FUNC1(sc);

	if (ad->ad_id & ATH_DIAG_IN) {
		/*
		 * Copy in data.
		 */
		indata = FUNC13(insize, M_TEMP, M_NOWAIT);
		if (indata == NULL) {
			error = ENOMEM;
			goto bad;
		}
		error = FUNC9(ad->ad_in_data, indata, insize);
		if (error)
			goto bad;
	}
	if (ad->ad_id & ATH_DIAG_DYN) {
		/*
		 * Allocate a buffer for the results (otherwise the HAL
		 * returns a pointer to a buffer where we can read the
		 * results).  Note that we depend on the HAL leaving this
		 * pointer for us to use below in reclaiming the buffer;
		 * may want to be more defensive.
		 */
		outdata = FUNC13(outsize, M_TEMP, M_NOWAIT | M_ZERO);
		if (outdata == NULL) {
			error = ENOMEM;
			goto bad;
		}
	}
	switch (id) {
		case SPECTRAL_CONTROL_GET_PARAMS:
			FUNC15(&peout, 0, sizeof(peout));
			outsize = sizeof(HAL_SPECTRAL_PARAM);
			FUNC3(sc->sc_ah, &peout);
			pe = (HAL_SPECTRAL_PARAM *) outdata;
			FUNC14(pe, &peout, sizeof(*pe));
			break;
		case SPECTRAL_CONTROL_SET_PARAMS:
			if (insize < sizeof(HAL_SPECTRAL_PARAM)) {
				error = EINVAL;
				break;
			}
			pe = (HAL_SPECTRAL_PARAM *) indata;
			FUNC2(sc->sc_ah, pe);
			/* Save a local copy of the updated parameters */
			FUNC3(sc->sc_ah,
			    &ss->spectral_state);
			break;
		case SPECTRAL_CONTROL_START:
			FUNC2(sc->sc_ah,
			    &ss->spectral_state);
			(void) FUNC4(sc->sc_ah);
			sc->sc_dospectral = 1;
			/* XXX need to update the PHY mask in the driver */
			break;
		case SPECTRAL_CONTROL_STOP:
			(void) FUNC5(sc->sc_ah);
			sc->sc_dospectral = 0;
			/* XXX need to update the PHY mask in the driver */
			break;
		case SPECTRAL_CONTROL_ENABLE_AT_RESET:
			if (insize < sizeof(int)) {
				FUNC11(sc->sc_dev, "%d != %d\n",
				    insize,
				    (int) sizeof(int));
				error = EINVAL;
				break;
			}
			if (indata == NULL) {
				FUNC11(sc->sc_dev, "indata=NULL\n");
				error = EINVAL;
				break;
			}
			val = * ((int *) indata);
			if (val == 0)
				ss->spectral_enable_after_reset = 0;
			else
				ss->spectral_enable_after_reset = 1;
			break;
		case SPECTRAL_CONTROL_ENABLE:
			/* XXX TODO */
		case SPECTRAL_CONTROL_DISABLE:
			/* XXX TODO */
		break;
		default:
			error = EINVAL;
			goto bad;
	}
	if (outsize < ad->ad_out_size)
		ad->ad_out_size = outsize;
	if (outdata && FUNC10(outdata, ad->ad_out_data, ad->ad_out_size))
		error = EFAULT;
bad:
	if ((ad->ad_id & ATH_DIAG_IN) && indata != NULL)
		FUNC12(indata, M_TEMP);
	if ((ad->ad_id & ATH_DIAG_DYN) && outdata != NULL)
		FUNC12(outdata, M_TEMP);
	FUNC0(sc);
	FUNC7(sc);
	FUNC1(sc);

	return (error);
}