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
struct nfsd_pnfsd_args {char* dspath; int /*<<< orphan*/  op; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSSVC_PNFSDS ; 
 int /*<<< orphan*/  PNFSDOP_DELDSSERVER ; 
 int /*<<< orphan*/  PNFSDOP_FORCEDELDS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  longopts ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct nfsd_pnfsd_args*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(int argc, char *argv[])
{
	struct nfsd_pnfsd_args pnfsdarg;
	int ch, force;

	if (FUNC2() != 0)
		FUNC1(1, "Must be run as root/su");
	force = 0;
	while ((ch = FUNC3(argc, argv, "f", longopts, NULL)) != -1) {
		switch (ch) {
		case 'f':
			force = 1;
			break;
		default:
			FUNC5();
		}
	}
	argc -= optind;
	argv += optind;
	if (argc != 1)
		FUNC5();

	if (force != 0)
		pnfsdarg.op = PNFSDOP_FORCEDELDS;
	else
		pnfsdarg.op = PNFSDOP_DELDSSERVER;
	pnfsdarg.dspath = *argv;
	if (FUNC4(NFSSVC_PNFSDS, &pnfsdarg) < 0)
		FUNC0(1, "Can't kill %s", *argv);
}