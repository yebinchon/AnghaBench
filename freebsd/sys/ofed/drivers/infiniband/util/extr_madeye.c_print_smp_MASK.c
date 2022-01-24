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
struct ib_smp {int /*<<< orphan*/ * return_path; int /*<<< orphan*/ * initial_path; int /*<<< orphan*/ * data; scalar_t__ dr_dlid; scalar_t__ dr_slid; int /*<<< orphan*/  mkey; int /*<<< orphan*/  attr_mod; scalar_t__ attr_id; int /*<<< orphan*/  tid; int /*<<< orphan*/  hop_cnt; int /*<<< orphan*/  hop_ptr; scalar_t__ status; int /*<<< orphan*/  method; int /*<<< orphan*/  mgmt_class; int /*<<< orphan*/  class_version; int /*<<< orphan*/  base_version; } ;

/* Variables and functions */
 int IB_SMP_DATA_SIZE ; 
 int IB_SMP_MAX_PATH_HOPS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ data ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void FUNC8(struct ib_smp *smp)
{
	int i;

	FUNC7("MAD version....0x%01x\n", smp->base_version);
	FUNC7("Class..........0x%01x (%s)\n", smp->mgmt_class,
	       FUNC3(smp->mgmt_class));
	FUNC7("Class version..0x%01x\n", smp->class_version);
	FUNC7("Method.........0x%01x (%s)\n", smp->method,
	       FUNC4(smp->mgmt_class, smp->method));
	FUNC7("Status.........0x%02x\n", FUNC0(smp->status));
	if (smp->status)
		FUNC6(FUNC0(smp->status));
	FUNC7("Hop pointer....0x%01x\n", smp->hop_ptr);
	FUNC7("Hop counter....0x%01x\n", smp->hop_cnt);
	FUNC7("Trans ID.......0x%llx\n", 
		(unsigned long long)FUNC2(smp->tid));
	FUNC7("Attr ID........0x%02x (%s)\n", FUNC0(smp->attr_id),
		FUNC5(smp->attr_id));
	FUNC7("Attr modifier..0x%04x\n", FUNC1(smp->attr_mod));

	FUNC7("Mkey...........0x%llx\n",
		(unsigned long long)FUNC2(smp->mkey));
	FUNC7("DR SLID........0x%02x\n", FUNC0(smp->dr_slid));
	FUNC7("DR DLID........0x%02x", FUNC0(smp->dr_dlid));

	if (data) {
		for (i = 0; i < IB_SMP_DATA_SIZE; i++) {
			if (i % 16 == 0)
				FUNC7("\nSMP Data.......");
			FUNC7("%01x ", smp->data[i]);
		}
		for (i = 0; i < IB_SMP_MAX_PATH_HOPS; i++) {
			if (i % 16 == 0)
				FUNC7("\nInitial path...");
			FUNC7("%01x ", smp->initial_path[i]);
		}
		for (i = 0; i < IB_SMP_MAX_PATH_HOPS; i++) {
			if (i % 16 == 0)
				FUNC7("\nReturn path....");
			FUNC7("%01x ", smp->return_path[i]);
		}
	}
	FUNC7("\n");
}