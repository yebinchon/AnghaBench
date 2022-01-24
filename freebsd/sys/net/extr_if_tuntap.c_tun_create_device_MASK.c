#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ucred {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct tuntap_softc {int /*<<< orphan*/  tun_mtx; TYPE_1__ tun_rsel; struct cdev* tun_dev; struct tuntap_driver* tun_drv; int /*<<< orphan*/  tun_flags; int /*<<< orphan*/  tun_cv; } ;
struct tuntap_driver {int /*<<< orphan*/  cdevsw; int /*<<< orphan*/  ident_flags; } ;
struct make_dev_args {int mda_mode; int mda_unit; struct tuntap_softc* mda_si_drv1; int /*<<< orphan*/  mda_gid; int /*<<< orphan*/  mda_uid; struct ucred* mda_cr; int /*<<< orphan*/ * mda_devsw; int /*<<< orphan*/  mda_flags; } ;
struct cdev {int /*<<< orphan*/ * si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_DIALER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MAKEDEV_REF ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_TUN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tuntap_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UID_UUCP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tuntap_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct make_dev_args*) ; 
 int FUNC6 (struct make_dev_args*,struct cdev**,char*,char const*) ; 
 struct tuntap_softc* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tun_list ; 
 int /*<<< orphan*/  tunhead ; 
 int /*<<< orphan*/  tunmtx ; 

__attribute__((used)) static int
FUNC11(struct tuntap_driver *drv, int unit, struct ucred *cr,
    struct cdev **dev, const char *name)
{
	struct make_dev_args args;
	struct tuntap_softc *tp;
	int error;

	tp = FUNC7(sizeof(*tp), M_TUN, M_WAITOK | M_ZERO);
	FUNC8(&tp->tun_mtx, "tun_mtx", NULL, MTX_DEF);
	FUNC2(&tp->tun_cv, "tun_condvar");
	tp->tun_flags = drv->ident_flags;
	tp->tun_drv = drv;

	FUNC5(&args);
	if (cr != NULL)
		args.mda_flags = MAKEDEV_REF;
	args.mda_devsw = &drv->cdevsw;
	args.mda_cr = cr;
	args.mda_uid = UID_UUCP;
	args.mda_gid = GID_DIALER;
	args.mda_mode = 0600;
	args.mda_unit = unit;
	args.mda_si_drv1 = tp;
	error = FUNC6(&args, dev, "%s", name);
	if (error != 0) {
		FUNC3(tp, M_TUN);
		return (error);
	}

	FUNC0((*dev)->si_drv1 != NULL,
	    ("Failed to set si_drv1 at %s creation", name));
	tp->tun_dev = *dev;
	FUNC4(&tp->tun_rsel.si_note, &tp->tun_mtx);
	FUNC9(&tunmtx);
	FUNC1(&tunhead, tp, tun_list);
	FUNC10(&tunmtx);
	return (0);
}