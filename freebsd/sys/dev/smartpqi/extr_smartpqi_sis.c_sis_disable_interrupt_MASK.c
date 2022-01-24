#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int intr_type; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  INTR_TYPE_FIXED 130 
#define  INTR_TYPE_MSI 129 
#define  INTR_TYPE_MSIX 128 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(pqisrc_softstate_t *softs)
{
	FUNC1("IN");
	
	switch(softs->intr_type) {
		case INTR_TYPE_FIXED:
			FUNC2(softs,false);
			FUNC3(softs);
			break;
		case INTR_TYPE_MSI:
		case INTR_TYPE_MSIX:
			FUNC4(softs);
			break;
		default:
			FUNC0("Inerrupt mode none!\n");
			break;
	}
	
	FUNC1("OUT");
}