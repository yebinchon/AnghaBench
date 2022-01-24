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
struct ucred {int dummy; } ;
struct tuntap_driver {int /*<<< orphan*/  cdevsw; int /*<<< orphan*/  clones; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  devname ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int IF_MAXUNIT ; 
 int /*<<< orphan*/  PRIV_NET_IFCREATE ; 
 int /*<<< orphan*/  SPECNAMELEN ; 
 int TUN_L2 ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,struct cdev**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ucred*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,char*,char*,int) ; 
 scalar_t__ tap_allow_uopen ; 
 scalar_t__ tapdclone ; 
 int FUNC7 (struct tuntap_driver*,int,struct ucred*,struct cdev**,char*) ; 
 scalar_t__ tundclone ; 
 struct tuntap_driver* FUNC8 (int) ; 
 scalar_t__ FUNC9 (char*,int*,int*) ; 

__attribute__((used)) static void
FUNC10(void *arg, struct ucred *cred, char *name, int namelen,
    struct cdev **dev)
{
	char devname[SPECNAMELEN + 1];
	struct tuntap_driver *drv;
	int append_unit, i, u, tunflags;
	bool mayclone;

	if (*dev != NULL)
		return;

	tunflags = 0;
	FUNC2(FUNC0(cred));
	if (FUNC9(name, &u, &tunflags) != 0)
		goto out;	/* Not recognized */

	if (u != -1 && u > IF_MAXUNIT)
		goto out;	/* Unit number too high */

	mayclone = FUNC5(cred, PRIV_NET_IFCREATE) == 0;
	if ((tunflags & TUN_L2) != 0) {
		/* tap/vmnet allow user open with a sysctl */
		mayclone = (mayclone || tap_allow_uopen) && tapdclone;
	} else {
		mayclone = mayclone && tundclone;
	}

	/*
	 * If tun cloning is enabled, only the superuser can create an
	 * interface.
	 */
	if (!mayclone)
		goto out;

	if (u == -1)
		append_unit = 1;
	else
		append_unit = 0;

	drv = FUNC8(tunflags);
	if (drv == NULL)
		goto out;

	/* find any existing device, or allocate new unit number */
	i = FUNC3(&drv->clones, &drv->cdevsw, &u, dev, 0);
	if (i) {
		if (append_unit) {
			namelen = FUNC6(devname, sizeof(devname), "%s%d",
			    name, u);
			name = devname;
		}

		i = FUNC7(drv, u, cred, dev, name);
	}
	if (i == 0)
		FUNC4(name, namelen, NULL);
out:
	FUNC1();
}