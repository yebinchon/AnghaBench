#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct isp_nexus {size_t tgt; scalar_t__ lun; int crnseed; struct isp_nexus* next; } ;
struct isp_fc {struct isp_nexus** nexus_hash; struct isp_nexus* nexus_free_list; } ;
typedef  scalar_t__ lun_id_t ;
struct TYPE_6__ {struct isp_fc* fc; } ;
struct TYPE_7__ {TYPE_1__ pc; } ;
struct TYPE_8__ {TYPE_2__ isp_osinfo; } ;
typedef  TYPE_3__ ispsoftc_t ;
typedef  int /*<<< orphan*/  XS_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int FUNC1 (size_t,scalar_t__) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 struct isp_nexus* FUNC5 (int,int /*<<< orphan*/ ,int) ; 

int
FUNC6(ispsoftc_t *isp, uint8_t *crnp, XS_T *cmd)
{
	lun_id_t lun;
	uint32_t chan, tgt;
	struct isp_fc *fc;
	struct isp_nexus *nxp;
	int idx;

	if (FUNC0(isp))
		return (0);

	chan = FUNC2(cmd);
	tgt = FUNC4(cmd);
	lun = FUNC3(cmd);
	fc = &isp->isp_osinfo.pc.fc[chan];
	idx = FUNC1(tgt, lun);
	nxp = fc->nexus_hash[idx];

	while (nxp) {
		if (nxp->tgt == tgt && nxp->lun == lun)
			break;
		nxp = nxp->next;
	}
	if (nxp == NULL) {
		nxp = fc->nexus_free_list;
		if (nxp == NULL) {
			nxp = FUNC5(sizeof (struct isp_nexus), M_DEVBUF, M_ZERO|M_NOWAIT);
			if (nxp == NULL) {
				return (-1);
			}
		} else {
			fc->nexus_free_list = nxp->next;
		}
		nxp->tgt = tgt;
		nxp->lun = lun;
		nxp->next = fc->nexus_hash[idx];
		fc->nexus_hash[idx] = nxp;
	}
	if (nxp->crnseed == 0)
		nxp->crnseed = 1;
	*crnp = nxp->crnseed++;
	return (0);
}