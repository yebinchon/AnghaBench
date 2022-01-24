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
struct vmctx {int dummy; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  cap_ioctl_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IOCTL ; 
 int /*<<< orphan*/  CAP_MMAP_RW ; 
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cores ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  maxcpus ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  sockets ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  threads ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct vmctx*) ; 
 int /*<<< orphan*/ * FUNC11 (size_t*) ; 
 struct vmctx* FUNC12 (char const*) ; 
 int FUNC13 (struct vmctx*) ; 
 int FUNC14 (struct vmctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vmctx *
FUNC15(const char *vmname)
{
	struct vmctx *ctx;
	int error;
	bool reinit, romboot;
#ifndef WITHOUT_CAPSICUM
	cap_rights_t rights;
	const cap_ioctl_t *cmds;	
	size_t ncmds;
#endif

	reinit = romboot = false;

	if (FUNC7())
		romboot = true;

	error = FUNC9(vmname);
	if (error) {
		if (errno == EEXIST) {
			if (romboot) {
				reinit = true;
			} else {
				/*
				 * The virtual machine has been setup by the
				 * userspace bootloader.
				 */
			}
		} else {
			FUNC8("vm_create");
			FUNC4(4);
		}
	} else {
		if (!romboot) {
			/*
			 * If the virtual machine was just created then a
			 * bootrom must be configured to boot it.
			 */
			FUNC5(stderr, "virtual machine cannot be booted\n");
			FUNC4(4);
		}
	}

	ctx = FUNC12(vmname);
	if (ctx == NULL) {
		FUNC8("vm_open");
		FUNC4(4);
	}

#ifndef WITHOUT_CAPSICUM
	FUNC0(&rights, CAP_IOCTL, CAP_MMAP_RW);
	if (FUNC2(FUNC10(ctx), &rights) == -1) 
		FUNC3(EX_OSERR, "Unable to apply rights for sandbox");
	FUNC11(&ncmds);
	cmds = FUNC11(NULL);
	if (cmds == NULL)
		FUNC3(EX_OSERR, "out of memory");
	if (FUNC1(FUNC10(ctx), cmds, ncmds) == -1)
		FUNC3(EX_OSERR, "Unable to apply rights for sandbox");
	FUNC6((cap_ioctl_t *)cmds);
#endif
 
	if (reinit) {
		error = FUNC13(ctx);
		if (error) {
			FUNC8("vm_reinit");
			FUNC4(4);
		}
	}
	error = FUNC14(ctx, sockets, cores, threads, maxcpus);
	if (error)
		FUNC3(EX_OSERR, "vm_set_topology");
	return (ctx);
}