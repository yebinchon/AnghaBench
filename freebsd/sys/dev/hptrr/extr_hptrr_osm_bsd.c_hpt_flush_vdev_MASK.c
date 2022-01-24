#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int hard_flush; } ;
struct TYPE_21__ {int* priv; scalar_t__ Result; int /*<<< orphan*/  done; TYPE_7__* target; TYPE_6__ flags; int /*<<< orphan*/  type; } ;
struct TYPE_17__ {TYPE_3__* transform; } ;
struct TYPE_18__ {TYPE_4__ array; } ;
struct TYPE_20__ {int /*<<< orphan*/  vbus; int /*<<< orphan*/  cmds_per_request; TYPE_5__ u; int /*<<< orphan*/  type; } ;
struct TYPE_16__ {TYPE_2__* target; TYPE_1__* source; } ;
struct TYPE_15__ {int /*<<< orphan*/  cmds_per_request; } ;
struct TYPE_14__ {int /*<<< orphan*/  cmds_per_request; } ;
typedef  TYPE_7__* PVDEV ;
typedef  int /*<<< orphan*/  PVBUS_EXT ;
typedef  TYPE_8__* PCOMMAND ;
typedef  int /*<<< orphan*/  HPT_UINT ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TYPE_FLUSH ; 
 int /*<<< orphan*/  HPT_OSM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PPAUSE ; 
 scalar_t__ RETURN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpt_flush_done ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(PVBUS_EXT vbus_ext, PVDEV vd)
{
	PCOMMAND pCmd;
	int result = 0, done;
	HPT_UINT count;

	FUNC0(("flusing dev %p", vd));

	FUNC1(vbus_ext);

	if (FUNC7(vd->type) && vd->u.array.transform)
		count = FUNC8(vd->u.array.transform->source->cmds_per_request,
					vd->u.array.transform->target->cmds_per_request);
	else
		count = vd->cmds_per_request;

	pCmd = FUNC3(vd->vbus, count);

	if (!pCmd) {
		return -1;
	}

	pCmd->type = CMD_TYPE_FLUSH;
	pCmd->flags.hard_flush = 1;
	pCmd->target = vd;
	pCmd->done = hpt_flush_done;
	done = 0;
	pCmd->priv = &done;

	FUNC5(pCmd);
	
	if (!done) {
		while (FUNC2(vbus_ext, pCmd, PPAUSE, "hptfls", HPT_OSM_TIMEOUT)) {
			FUNC6(vd->vbus);
		}
	}

	FUNC0(("flush result %d", pCmd->Result));

	if (pCmd->Result!=RETURN_SUCCESS)
		result = -1;

	FUNC4(pCmd);

	return result;
}