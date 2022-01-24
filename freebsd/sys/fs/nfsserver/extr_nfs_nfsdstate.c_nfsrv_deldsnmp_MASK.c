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
struct nfsmount {int dummy; } ;
struct nfsdevice {char* nfsdev_host; int /*<<< orphan*/  nfsdev_deviceid; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int PNFSDOP_FORCEDELDS ; 
 int /*<<< orphan*/  FUNC3 (struct nfsdevice*) ; 
 struct nfsdevice* FUNC4 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nfsdevice* FUNC6 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

struct nfsdevice *
FUNC8(int op, struct nfsmount *nmp, NFSPROC_T *p)
{
	struct nfsdevice *fndds;

	FUNC2(4, "deldsdvp\n");
	FUNC0();
	if (op == PNFSDOP_FORCEDELDS)
		fndds = FUNC6(nmp);
	else
		fndds = FUNC4(nmp);
	if (fndds != NULL)
		FUNC3(fndds);
	FUNC1();
	if (fndds != NULL) {
		if (op != PNFSDOP_FORCEDELDS)
			FUNC5(fndds->nfsdev_deviceid, p);
		FUNC7("pNFS server: mirror %s failed\n", fndds->nfsdev_host);
	}
	return (fndds);
}