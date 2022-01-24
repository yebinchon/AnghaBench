#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t answer; int /*<<< orphan*/  id_num; } ;
typedef  TYPE_1__ CTL_RESPONSE ;

/* Variables and functions */
 int /*<<< orphan*/  ANNOUNCE ; 
 int /*<<< orphan*/  LEAVE_INVITE ; 
 size_t NANSWERS ; 
 size_t SUCCESS ; 
 int /*<<< orphan*/ * answers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* current_state ; 
 int /*<<< orphan*/  his_machine_addr ; 
 int /*<<< orphan*/  local_id ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msg ; 
 int /*<<< orphan*/  my_machine_addr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  remote_id ; 

void
FUNC3(void)
{
	CTL_RESPONSE response;

	current_state = "Trying to connect to your party's talk daemon";
	FUNC0(his_machine_addr, msg, ANNOUNCE, &response);
	remote_id = response.id_num;
	if (response.answer != SUCCESS) {
		if (response.answer < NANSWERS)
			FUNC1(answers[response.answer]);
		FUNC2();
	}
	/* leave the actual invitation on my talk daemon */
	current_state = "Trying to connect to local talk daemon";
	FUNC0(my_machine_addr, msg, LEAVE_INVITE, &response);
	local_id = response.id_num;
}