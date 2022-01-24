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
struct radarhandler {TYPE_3__ atd; int /*<<< orphan*/  s; } ;
typedef  int /*<<< orphan*/  pe ;
typedef  scalar_t__ caddr_t ;
struct TYPE_4__ {int pe_enabled; int pe_firpwr; int pe_rrssi; int pe_height; int pe_prssi; int pe_inband; int pe_relpwr; int pe_relstep; int pe_maxlen; int pe_usefir128; int pe_blockradar; int pe_enmaxrssi; int pe_extchannel; int pe_enrelpwr; int pe_en_relstep_check; } ;
typedef  TYPE_1__ HAL_PHYERR_PARAM ;

/* Variables and functions */
 int ATH_DIAG_DYN ; 
 int DFS_GET_THRESH ; 
 int /*<<< orphan*/  SIOCGATHPHYERR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(struct radarhandler *radar)
{
	HAL_PHYERR_PARAM pe;

	radar->atd.ad_id = DFS_GET_THRESH | ATH_DIAG_DYN;
	FUNC2(&pe, 0, sizeof(pe));

	radar->atd.ad_in_data = NULL;
	radar->atd.ad_in_size = 0;
	radar->atd.ad_out_data = (caddr_t) &pe;
	radar->atd.ad_out_size = sizeof(pe);

	if (FUNC1(radar->s, SIOCGATHPHYERR, &radar->atd) < 0)
		FUNC0(1, radar->atd.ad_name);

	FUNC3("Radar parameters (raw):\n");
	FUNC3("    pe_enabled: %d\n", pe.pe_enabled);
	FUNC3("    pe_firpwr: %d\n", pe.pe_firpwr);
	FUNC3("    pe_rrssi: %d\n", pe.pe_rrssi);
	FUNC3("    pe_height: %d\n", pe.pe_height);
	FUNC3("    pe_prssi: %d\n", pe.pe_prssi);
	FUNC3("    pe_inband: %d\n", pe.pe_inband);
	FUNC3("    pe_relpwr: %d\n", pe.pe_relpwr);
	FUNC3("    pe_relstep: %d\n", pe.pe_relstep);
	FUNC3("    pe_maxlen: %d\n", pe.pe_maxlen);
	FUNC3("    pe_usefir128: %d\n", pe.pe_usefir128);
	FUNC3("    pe_blockradar: %d\n", pe.pe_blockradar);
	FUNC3("    pe_enmaxrssi: %d\n", pe.pe_enmaxrssi);
	FUNC3("    pe_extchannel: %d\n", pe.pe_extchannel);
	FUNC3("    pe_enrelpwr: %d\n", pe.pe_enrelpwr);
	FUNC3("    pe_en_relstep_check: %d\n", pe.pe_en_relstep_check);
}