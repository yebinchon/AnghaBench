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
struct AdapterControlBlock {int adapter_type; int pci_unit; } ;

/* Variables and functions */
#define  ACB_ADAPTER_TYPE_A 132 
#define  ACB_ADAPTER_TYPE_B 131 
#define  ACB_ADAPTER_TYPE_C 130 
#define  ACB_ADAPTER_TYPE_D 129 
#define  ACB_ADAPTER_TYPE_E 128 
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static void FUNC6(struct AdapterControlBlock *acb)
{
	switch (acb->adapter_type) {
	case ACB_ADAPTER_TYPE_A:
		FUNC0(acb);
		break;
	case ACB_ADAPTER_TYPE_B:
		FUNC1(acb);
		break;
	case ACB_ADAPTER_TYPE_C:
		FUNC2(acb);
		break;
	case ACB_ADAPTER_TYPE_D:
		FUNC3(acb);
		break;
	case ACB_ADAPTER_TYPE_E:
		FUNC4(acb);
		break;
	default:
		FUNC5("arcmsr%d: interrupt service,"
		" unknown adapter type =%d\n", acb->pci_unit, acb->adapter_type);
		break;
	}
}