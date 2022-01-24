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
struct CommandControlBlock {int dummy; } ;
struct AdapterControlBlock {int adapter_type; } ;

/* Variables and functions */
#define  ACB_ADAPTER_TYPE_A 132 
#define  ACB_ADAPTER_TYPE_B 131 
#define  ACB_ADAPTER_TYPE_C 130 
#define  ACB_ADAPTER_TYPE_D 129 
#define  ACB_ADAPTER_TYPE_E 128 
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*,struct CommandControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*,struct CommandControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*,struct CommandControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*,struct CommandControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*,struct CommandControlBlock*) ; 

__attribute__((used)) static void FUNC5(struct AdapterControlBlock *acb, struct CommandControlBlock *poll_srb)
{
	switch (acb->adapter_type) {
	case ACB_ADAPTER_TYPE_A: {
			FUNC0(acb, poll_srb);
		}
		break;
	case ACB_ADAPTER_TYPE_B: {
			FUNC1(acb, poll_srb);
		}
		break;
	case ACB_ADAPTER_TYPE_C: {
			FUNC2(acb, poll_srb);
		}
		break;
	case ACB_ADAPTER_TYPE_D: {
			FUNC3(acb, poll_srb);
		}
		break;
	case ACB_ADAPTER_TYPE_E: {
			FUNC4(acb, poll_srb);
		}
		break;
	}
}