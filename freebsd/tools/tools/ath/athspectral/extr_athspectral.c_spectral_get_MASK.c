#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ad_id; int ad_out_size; int /*<<< orphan*/  ad_name; scalar_t__ ad_out_data; scalar_t__ ad_in_size; int /*<<< orphan*/ * ad_in_data; } ;
struct spectralhandler {TYPE_3__ atd; int /*<<< orphan*/  s; } ;
typedef  int /*<<< orphan*/  pe ;
typedef  scalar_t__ caddr_t ;
struct TYPE_4__ {int ss_enabled; int ss_active; int ss_count; int ss_fft_period; int ss_period; int ss_short_report; int ss_spectral_pri; int radar_bin_thresh_sel; } ;
typedef  TYPE_1__ HAL_SPECTRAL_PARAM ;

/* Variables and functions */
 int ATH_DIAG_DYN ; 
 int /*<<< orphan*/  SIOCGATHSPECTRAL ; 
 int SPECTRAL_CONTROL_GET_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(struct spectralhandler *spectral)
{
	HAL_SPECTRAL_PARAM pe;

	spectral->atd.ad_id = SPECTRAL_CONTROL_GET_PARAMS | ATH_DIAG_DYN;
	FUNC2(&pe, 0, sizeof(pe));

	spectral->atd.ad_in_data = NULL;
	spectral->atd.ad_in_size = 0;
	spectral->atd.ad_out_data = (caddr_t) &pe;
	spectral->atd.ad_out_size = sizeof(pe);

	if (FUNC1(spectral->s, SIOCGATHSPECTRAL, &spectral->atd) < 0)
		FUNC0(1, "%s", spectral->atd.ad_name);

	FUNC3("Spectral parameters (raw):\n");
	FUNC3("   ss_enabled: %d\n", pe.ss_enabled);
	FUNC3("   ss_active: %d\n", pe.ss_active);
	FUNC3("   ss_count: %d\n", pe.ss_count);
	FUNC3("   ss_fft_period: %d\n", pe.ss_fft_period);
	FUNC3("   ss_period: %d\n", pe.ss_period);
	FUNC3("   ss_short_report: %d\n", pe.ss_short_report);
	FUNC3("   ss_spectral_pri: %d\n", pe.ss_spectral_pri);
	FUNC3("   radar_bin_thresh_sel: %d\n", pe.radar_bin_thresh_sel);
}