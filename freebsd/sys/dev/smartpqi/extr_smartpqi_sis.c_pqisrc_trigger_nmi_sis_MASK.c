#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* ioa_reg; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
struct TYPE_5__ {int /*<<< orphan*/  host_to_ioa_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LEGACY_SIS_IDBR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRIGGER_NMI_SIS ; 

void FUNC3(pqisrc_softstate_t *softs)
{

	FUNC0("IN\n");

	FUNC2(softs,  &softs->ioa_reg->host_to_ioa_db, 
			LEGACY_SIS_IDBR, FUNC1(TRIGGER_NMI_SIS));
	FUNC0("OUT\n");
}