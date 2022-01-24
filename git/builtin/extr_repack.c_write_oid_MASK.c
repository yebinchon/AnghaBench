#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct packed_git {int dummy; } ;
struct object_id {int dummy; } ;
struct child_process {int in; } ;
struct TYPE_2__ {int hexsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct object_id const*) ; 
 scalar_t__ FUNC3 (struct child_process*) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

__attribute__((used)) static int FUNC5(const struct object_id *oid, struct packed_git *pack,
		     uint32_t pos, void *data)
{
	struct child_process *cmd = data;

	if (cmd->in == -1) {
		if (FUNC3(cmd))
			FUNC1(FUNC0("could not start pack-objects to repack promisor objects"));
	}

	FUNC4(cmd->in, FUNC2(oid), the_hash_algo->hexsz);
	FUNC4(cmd->in, "\n", 1);
	return 0;
}