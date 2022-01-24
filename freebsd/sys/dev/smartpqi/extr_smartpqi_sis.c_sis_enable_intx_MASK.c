#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {TYPE_1__* ioa_reg; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
struct TYPE_7__ {int /*<<< orphan*/  host_to_ioa_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  LEGACY_SIS_IDBR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  SIS_ENABLE_INTX ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC5(pqisrc_softstate_t *softs)
{
	uint32_t db_reg;

	FUNC1("IN\n");

	db_reg = FUNC2(softs, &softs->ioa_reg->host_to_ioa_db,
			LEGACY_SIS_IDBR);
	db_reg |= SIS_ENABLE_INTX;
	FUNC3(softs, &softs->ioa_reg->host_to_ioa_db,
			LEGACY_SIS_IDBR, db_reg);
	if (FUNC4(softs,SIS_ENABLE_INTX) 
			!= PQI_STATUS_SUCCESS) {
		FUNC0("Failed to wait for enable intx db bit to clear\n");
	}
	FUNC1("OUT\n");
}