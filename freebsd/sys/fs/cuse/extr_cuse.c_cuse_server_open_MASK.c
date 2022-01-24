#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct cuse_server {int /*<<< orphan*/  refs; TYPE_1__ selinfo; int /*<<< orphan*/  cv; int /*<<< orphan*/  hmem; int /*<<< orphan*/  hcli; int /*<<< orphan*/  hdev; int /*<<< orphan*/  head; int /*<<< orphan*/  pid; } ;
struct cdev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_CUSE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cuse_server*,int /*<<< orphan*/ ) ; 
 TYPE_2__* curproc ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  cuse_mtx ; 
 int /*<<< orphan*/  cuse_server_free ; 
 int /*<<< orphan*/  cuse_server_head ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (struct cuse_server*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC6 (struct cuse_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct cuse_server* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(struct cdev *dev, int fflags, int devtype, struct thread *td)
{
	struct cuse_server *pcs;

	pcs = FUNC8(sizeof(*pcs), M_CUSE, M_WAITOK | M_ZERO);
	if (pcs == NULL)
		return (ENOMEM);

	if (FUNC5(pcs, &cuse_server_free)) {
		FUNC9("Cuse: Cannot set cdevpriv.\n");
		FUNC6(pcs, M_CUSE);
		return (ENOMEM);
	}
	/* store current process ID */
	pcs->pid = curproc->p_pid;

	FUNC0(&pcs->head);
	FUNC0(&pcs->hdev);
	FUNC0(&pcs->hcli);
	FUNC0(&pcs->hmem);

	FUNC4(&pcs->cv, "cuse-server-cv");

	FUNC7(&pcs->selinfo.si_note, &cuse_mtx);

	FUNC2();
	pcs->refs++;
	FUNC1(&cuse_server_head, pcs, entry);
	FUNC3();

	return (0);
}