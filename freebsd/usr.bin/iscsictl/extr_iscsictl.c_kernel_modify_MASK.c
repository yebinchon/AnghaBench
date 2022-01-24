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
struct target {int dummy; } ;
struct iscsi_session_modify {unsigned int ism_session_id; int /*<<< orphan*/  ism_conf; } ;
typedef  int /*<<< orphan*/  ism ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSISMODIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct target const*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct iscsi_session_modify*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session_modify*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(int iscsi_fd, unsigned int session_id, const struct target *targ)
{
	struct iscsi_session_modify ism;
	int error;

	FUNC2(&ism, 0, sizeof(ism));
	ism.ism_session_id = session_id;
	FUNC0(&ism.ism_conf, targ);
	error = FUNC1(iscsi_fd, ISCSISMODIFY, &ism);
	if (error != 0)
		FUNC3("ISCSISMODIFY");
	return (error);
}