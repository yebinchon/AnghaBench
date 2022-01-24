#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct ccb_scsiio {int dummy; } ;
struct TYPE_8__ {TYPE_1__* entries; } ;
struct ccb_hdr {int /*<<< orphan*/  timeout_ch; TYPE_2__ sim_priv; } ;
struct TYPE_9__ {TYPE_4__* vhba; } ;
typedef  TYPE_3__ mptest_t ;
struct TYPE_11__ {int /*<<< orphan*/  tqe; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  done; int /*<<< orphan*/  actv; } ;
struct TYPE_7__ {TYPE_3__* ptr; } ;

/* Variables and functions */
 struct ccb_hdr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ccb_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct ccb_scsiio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_5__ sim_links ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 

__attribute__((used)) static void
FUNC8(void *arg, int pending)
{
	mptest_t *vhbas = arg;
	struct ccb_hdr *ccbh;
	int nadded = 0;

	FUNC4(&vhbas->vhba->lock);
	while ((ccbh = FUNC0(&vhbas->vhba->actv)) != NULL) {
		FUNC1(&vhbas->vhba->actv, ccbh, sim_links.tqe);
                FUNC3(vhbas, (struct ccb_scsiio *)ccbh);
		nadded++;
		ccbh->sim_priv.entries[0].ptr = vhbas;
		FUNC2(&ccbh->timeout_ch);
	}
	if (nadded) {
		FUNC6(vhbas->vhba);
	} else {
		while ((ccbh = FUNC0(&vhbas->vhba->done)) != NULL) {
			FUNC1(&vhbas->vhba->done, ccbh, sim_links.tqe);
			FUNC7((union ccb *)ccbh);
		}
	}
	FUNC5(&vhbas->vhba->lock);
}