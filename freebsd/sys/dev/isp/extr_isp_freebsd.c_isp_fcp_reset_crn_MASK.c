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
typedef  scalar_t__ uint32_t ;
struct isp_nexus {scalar_t__ tgt; scalar_t__ crnseed; struct isp_nexus* next; } ;
struct isp_fc {struct isp_nexus** nexus_hash; } ;
typedef  int /*<<< orphan*/  ispsoftc_t ;

/* Variables and functions */
 struct isp_fc* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ISP_LOGDEBUG0 ; 
 int NEXUS_HASH_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,...) ; 

void
FUNC2(ispsoftc_t *isp, int chan, uint32_t tgt, int tgt_set)
{
	struct isp_fc *fc = FUNC0(isp, chan);
	struct isp_nexus *nxp;
	int i;

	if (tgt_set == 0)
		FUNC1(isp, ISP_LOGDEBUG0,
		    "Chan %d resetting CRN on all targets", chan);
	else
		FUNC1(isp, ISP_LOGDEBUG0,
		    "Chan %d resetting CRN on target %u", chan, tgt);

	for (i = 0; i < NEXUS_HASH_WIDTH; i++) {
		for (nxp = fc->nexus_hash[i]; nxp != NULL; nxp = nxp->next) {
			if (tgt_set == 0 || tgt == nxp->tgt)
				nxp->crnseed = 0;
		}
	}
}