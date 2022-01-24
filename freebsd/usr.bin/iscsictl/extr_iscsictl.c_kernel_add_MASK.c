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
struct iscsi_session_add {int /*<<< orphan*/  isa_conf; } ;
typedef  int /*<<< orphan*/  isa ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSISADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct target const*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct iscsi_session_add*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session_add*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(int iscsi_fd, const struct target *targ)
{
	struct iscsi_session_add isa;
	int error;

	FUNC2(&isa, 0, sizeof(isa));
	FUNC0(&isa.isa_conf, targ);
	error = FUNC1(iscsi_fd, ISCSISADD, &isa);
	if (error != 0)
		FUNC3("ISCSISADD");
	return (error);
}