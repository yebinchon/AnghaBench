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
struct ath_driver_req {int dummy; } ;
struct ath_diag {int ad_out_size; int /*<<< orphan*/  ad_name; scalar_t__ ad_out_data; int /*<<< orphan*/  ad_id; } ;
typedef  int /*<<< orphan*/  state ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int noiseImmunityLevel; int cckNoiseImmunityLevel; int spurImmunityLevel; int firstepLevel; int ofdmWeakSigDetectOff; int cckWeakSigThreshold; int mrcCck; } ;
typedef  TYPE_1__ HAL_ANI_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  HAL_DIAG_ANI_CURRENT ; 
 int /*<<< orphan*/  SIOCGATHDIAG ; 
 scalar_t__ FUNC0 (struct ath_driver_req*,int /*<<< orphan*/ ,struct ath_diag*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC4(struct ath_driver_req *req, const char *ifname)
{
	struct ath_diag atd;
	HAL_ANI_STATE state;

	/*
	 * Whilst we're doing the ath_diag pieces, we have to set this
	 * ourselves.
	 */
	FUNC3(atd.ad_name, ifname, sizeof (atd.ad_name));

	atd.ad_id = HAL_DIAG_ANI_CURRENT; /* XXX | DIAG_DYN? */
	atd.ad_out_data = (caddr_t) &state;
	atd.ad_out_size = sizeof(state);

	if (FUNC0(req, SIOCGATHDIAG, &atd) < 0)
		FUNC1(1, "%s", atd.ad_name);


	FUNC2("  ofdm_noise_immunity_level=%d\n", state.noiseImmunityLevel);
	FUNC2("  cck_noise_immunity_level=%d\n", state.cckNoiseImmunityLevel);
	FUNC2("  spur_immunity_level=%d\n", state.spurImmunityLevel);
	FUNC2("  firstep_level=%d\n", state.firstepLevel);
	FUNC2("  ofdm_weak_signal_detect=%d\n", state.ofdmWeakSigDetectOff);
	FUNC2("  cck_weak_signal_threshold=%d\n", state.cckWeakSigThreshold);
	FUNC2("  mrc_cck=%d\n", state.mrcCck);
	/* XXX TODO: cycle counts? */
}