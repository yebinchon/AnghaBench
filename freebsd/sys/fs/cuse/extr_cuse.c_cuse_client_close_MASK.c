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
struct thread {int dummy; } ;
struct cuse_client_command {int dummy; } ;
struct cuse_client {int /*<<< orphan*/  fflags; struct cuse_client_command* cmds; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 size_t CUSE_CMD_CLOSE ; 
 int FUNC0 (struct cuse_client**) ; 
 int /*<<< orphan*/  FUNC1 (struct cuse_client*) ; 
 int FUNC2 (struct cuse_client_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cuse_client_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cuse_client_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct cuse_client_command*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
	struct cuse_client_command *pccmd;
	struct cuse_client *pcc;
	int error;

	error = FUNC0(&pcc);
	if (error != 0)
		return (0);

	pccmd = &pcc->cmds[CUSE_CMD_CLOSE];

	FUNC4(pccmd);

	FUNC6();
	FUNC3(pccmd, 0, 0, pcc->fflags, 0);

	error = FUNC2(pccmd, 0, 0);
	FUNC7();

	FUNC5(pccmd);

	FUNC6();
	FUNC1(pcc);
	FUNC7();

	return (0);
}