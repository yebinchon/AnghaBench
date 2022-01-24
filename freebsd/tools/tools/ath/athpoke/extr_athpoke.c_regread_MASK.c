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
typedef  int /*<<< orphan*/  v ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ath_diag {int ad_in_size; int ad_out_size; int ad_id; int /*<<< orphan*/  ad_name; void* ad_out_data; void* ad_in_data; } ;
typedef  int /*<<< orphan*/  ra ;
typedef  void* caddr_t ;
struct TYPE_2__ {scalar_t__ end; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ HAL_REGRANGE ;

/* Variables and functions */
 int ATH_DIAG_DYN ; 
 int ATH_DIAG_IN ; 
 int HAL_DIAG_REGS ; 
 int /*<<< orphan*/  SIOCGATHDIAG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ath_diag*) ; 

__attribute__((used)) static uint32_t
FUNC2(int s, struct ath_diag *atd, uint32_t r)
{
	HAL_REGRANGE ra;
	uint32_t v[3];

	ra.start = r;
	ra.end = 0;

	atd->ad_in_data = (caddr_t) &ra;
	atd->ad_in_size = sizeof(ra);
	atd->ad_out_data = (caddr_t) v;
	atd->ad_out_size = sizeof(v);
	atd->ad_id = HAL_DIAG_REGS | ATH_DIAG_IN | ATH_DIAG_DYN;
	if (FUNC1(s, SIOCGATHDIAG, atd) < 0)
		FUNC0(1, atd->ad_name);
	return v[2];
}