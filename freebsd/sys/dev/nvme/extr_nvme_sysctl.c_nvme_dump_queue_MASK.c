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
struct nvme_qpair {int id; int phase; int num_entries; struct nvme_command* cmd; struct nvme_completion* cpl; } ;
struct nvme_completion {int dummy; } ;
struct nvme_command {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvme_command*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_completion*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(struct nvme_qpair *qpair)
{
	struct nvme_completion *cpl;
	struct nvme_command *cmd;
	int i;

	FUNC2("id:%04Xh phase:%d\n", qpair->id, qpair->phase);

	FUNC2("Completion queue:\n");
	for (i = 0; i < qpair->num_entries; i++) {
		cpl = &qpair->cpl[i];
		FUNC2("%05d: ", i);
		FUNC1(cpl);
	}

	FUNC2("Submission queue:\n");
	for (i = 0; i < qpair->num_entries; i++) {
		cmd = &qpair->cmd[i];
		FUNC2("%05d: ", i);
		FUNC0(cmd);
	}
}