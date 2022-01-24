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
typedef  int /*<<< orphan*/  u_long ;
struct thread {int dummy; } ;
struct gctl_req {int nerror; int lerror; scalar_t__ version; int /*<<< orphan*/  serror; int /*<<< orphan*/  error; int /*<<< orphan*/ * arg; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ GCTL_VERSION ; 
 int G_F_CTLDUMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_ctl_req ; 
 int g_debugflags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gctl_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct cdev *dev, u_long cmd, caddr_t data, int fflag, struct thread *td)
{
	struct gctl_req *req;
	int nerror;

	req = (void *)data;
	req->nerror = 0;
	/* It is an error if we cannot return an error text */
	if (req->lerror < 2)
		return (EINVAL);
	if (!FUNC12(req->error, req->lerror, VM_PROT_WRITE))
		return (EINVAL);

	req->serror = FUNC11();
	/* Check the version */
	if (req->version != GCTL_VERSION) {
		FUNC5(req, "kernel and libgeom version mismatch.");
		req->arg = NULL;
	} else {
		/* Get things on board */
		FUNC2(req);

		if (g_debugflags & G_F_CTLDUMP)
			FUNC4(req);

		if (!req->nerror) {
			FUNC1(g_ctl_req, req, M_WAITOK, NULL);
			FUNC3(req);
		}
	}
	if (FUNC9(req->serror)) {
		FUNC0(FUNC8(req->serror), req->error,
		    FUNC7(req->lerror, FUNC10(req->serror) + 1));
	}

	nerror = req->nerror;
	FUNC6(req);
	return (nerror);
}