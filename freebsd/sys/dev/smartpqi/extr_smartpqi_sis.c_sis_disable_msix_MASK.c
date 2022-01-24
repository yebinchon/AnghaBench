#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {TYPE_1__* ioa_reg; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
struct TYPE_6__ {int /*<<< orphan*/  host_to_ioa_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LEGACY_SIS_IDBR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIS_ENABLE_MSIX ; 

void FUNC3(pqisrc_softstate_t *softs)
{
	uint32_t db_reg;

	FUNC0("IN\n");

	db_reg = FUNC1(softs, &softs->ioa_reg->host_to_ioa_db,
			LEGACY_SIS_IDBR);
	db_reg &= ~SIS_ENABLE_MSIX;
	FUNC2(softs, &softs->ioa_reg->host_to_ioa_db,
			LEGACY_SIS_IDBR, db_reg);

	FUNC0("OUT\n");
}