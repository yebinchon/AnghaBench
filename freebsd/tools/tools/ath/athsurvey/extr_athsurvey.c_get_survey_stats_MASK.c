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
typedef  int /*<<< orphan*/  uint16_t ;
struct ath_diag {int ad_id; int ad_out_size; int /*<<< orphan*/  ad_name; scalar_t__ ad_out_data; int /*<<< orphan*/ * ad_in_data; scalar_t__ ad_in_size; } ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  atd ;
typedef  int /*<<< orphan*/  HAL_CHANNEL_SURVEY ;

/* Variables and functions */
 int ATH_DIAG_OUT ; 
 int HAL_DIAG_CHANSURVEY ; 
 int /*<<< orphan*/  SIOCGATHDIAG ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ath_diag*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_diag*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC4(int s, const char *ifname, HAL_CHANNEL_SURVEY *hs)
{
	uint16_t eedata;
	struct ath_diag atd;

	FUNC2(&atd, '\0', sizeof(atd));

	atd.ad_id = HAL_DIAG_CHANSURVEY | ATH_DIAG_OUT;
	atd.ad_in_size = 0;
	atd.ad_in_data = NULL;
	atd.ad_out_size = sizeof(HAL_CHANNEL_SURVEY);
	atd.ad_out_data = (caddr_t) hs;
	FUNC3(atd.ad_name, ifname, sizeof(atd.ad_name));

	if (FUNC1(s, SIOCGATHDIAG, &atd) < 0) {
		FUNC0(1, "ioctl: %s", atd.ad_name);
		return (0);
	}
	return (1);
}