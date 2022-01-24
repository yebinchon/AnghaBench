#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {scalar_t__ virt; scalar_t__ phys; } ;
struct TYPE_9__ {int /*<<< orphan*/  os; TYPE_8__ bmbx; } ;
typedef  TYPE_1__ sli4_t ;
struct TYPE_10__ {scalar_t__ val; } ;
typedef  TYPE_2__ sli4_mcqe_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_DEBUG_ENABLE_CQ_DUMP ; 
 int /*<<< orphan*/  OCS_DMASYNC_POSTREAD ; 
 int SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  SLI4_REG_BMBX ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_ERROR1 ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_ERROR2 ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,char*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int32_t
FUNC9(sli4_t *sli4)
{
	void *cqe = (uint8_t *)sli4->bmbx.virt + SLI4_BMBX_SIZE;

#if defined(OCS_INCLUDE_DEBUG)
	sli_dump_bmbx_command(sli4, sli4->bmbx.virt, "bmbx cmd");
#endif

	if (FUNC7(sli4) > 0) {
		FUNC2(sli4->os, "Chip is in an error state - Mailbox "
			"command rejected status=%#x error1=%#x error2=%#x\n",
			FUNC8(sli4, SLI4_REG_SLIPORT_STATUS),
			FUNC8(sli4, SLI4_REG_SLIPORT_ERROR1),
			FUNC8(sli4, SLI4_REG_SLIPORT_ERROR2));
		return -1;
	}

	if (FUNC4(sli4)) {
		FUNC2(sli4->os, "bootstrap mailbox write fail phys=%p reg=%#x\n",
			(void*)sli4->bmbx.phys,
			FUNC8(sli4, SLI4_REG_BMBX));
		return -1;
	}

	/* check completion queue entry status */
	FUNC0(&sli4->bmbx, OCS_DMASYNC_POSTREAD);
	if (((sli4_mcqe_t *)cqe)->val) {
#if defined(OCS_INCLUDE_DEBUG)
		sli_dump_bmbx_command(sli4, sli4->bmbx.virt, "bmbx cmpl");
        ocs_dump32(OCS_DEBUG_ENABLE_CQ_DUMP, sli4->os, "bmbx cqe", cqe, sizeof(sli4_mcqe_t));
#endif
		return FUNC5(cqe);
	} else {
		FUNC3(sli4->os, "invalid or wrong type\n");
		return -1;
	}
}