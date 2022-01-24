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
typedef  int /*<<< orphan*/  va_list ;
struct make_dev_args {int mda_size; int mda_flags; int /*<<< orphan*/  mda_mode; int /*<<< orphan*/  mda_gid; int /*<<< orphan*/  mda_uid; int /*<<< orphan*/ * mda_cr; TYPE_1__* mda_devsw; } ;
struct cdev {int si_flags; int /*<<< orphan*/  si_mode; int /*<<< orphan*/  si_gid; int /*<<< orphan*/  si_uid; int /*<<< orphan*/  si_cred; int /*<<< orphan*/  si_name; } ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_2__ {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*,int /*<<< orphan*/ ) ; 
 int MAKEDEV_CHECKNAME ; 
 int MAKEDEV_ETERNAL ; 
 int MAKEDEV_NOWAIT ; 
 int MAKEDEV_REF ; 
 int MAKEDEV_WAITOK ; 
 int SI_ETERNAL ; 
 int SI_NAMED ; 
 int /*<<< orphan*/  FUNC2 (struct make_dev_args*,struct make_dev_args*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct make_dev_args*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct cdev* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC13 (struct cdev*) ; 
 int /*<<< orphan*/  devfs_inos ; 
 int /*<<< orphan*/  FUNC14 (struct cdev*) ; 
 struct cdev* FUNC15 (struct make_dev_args*,struct cdev*) ; 
 int /*<<< orphan*/  FUNC16 (struct cdev*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_1__*,int) ; 
 int FUNC19 (struct cdev*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  si_list ; 

__attribute__((used)) static int
FUNC20(struct make_dev_args *args1, struct cdev **dres,
    const char *fmt, va_list ap)
{
	struct cdev *dev, *dev_new;
	struct make_dev_args args;
	int res;

	FUNC3(&args, sizeof(args));
	if (sizeof(args) < args1->mda_size)
		return (EINVAL);
	FUNC2(args1, &args, args1->mda_size);
	FUNC0((args.mda_flags & MAKEDEV_WAITOK) == 0 ||
	    (args.mda_flags & MAKEDEV_NOWAIT) == 0,
	    ("make_dev_sv: both WAITOK and NOWAIT specified"));
	dev_new = FUNC11(args.mda_flags);
	if (dev_new == NULL)
		return (ENOMEM);
	FUNC7();
	res = FUNC18(args.mda_devsw, args.mda_flags);
	if (res != 0) {
		FUNC9();
		FUNC13(dev_new);
		return (res);
	}
	dev = FUNC15(&args, dev_new);
	if ((dev->si_flags & SI_NAMED) == 0) {
		res = FUNC19(dev, fmt, ap);
		if (res != 0) {
			if ((args.mda_flags & MAKEDEV_CHECKNAME) == 0) {
				FUNC17(
			"make_dev_sv: bad si_name (error=%d, si_name=%s)",
				    res, dev->si_name);
			}
			if (dev == dev_new) {
				FUNC1(dev, si_list);
				FUNC9();
				FUNC13(dev);
			} else
				FUNC9();
			return (res);
		}
	}
	if ((args.mda_flags & MAKEDEV_REF) != 0)
		FUNC8(dev);
	if ((args.mda_flags & MAKEDEV_ETERNAL) != 0)
		dev->si_flags |= SI_ETERNAL;
	FUNC0(!(dev->si_flags & SI_NAMED),
	    ("make_dev() by driver %s on pre-existing device (min=%x, name=%s)",
	    args.mda_devsw->d_name, FUNC6(dev), FUNC14(dev)));
	dev->si_flags |= SI_NAMED;
	if (args.mda_cr != NULL)
		dev->si_cred = FUNC5(args.mda_cr);
	dev->si_uid = args.mda_uid;
	dev->si_gid = args.mda_gid;
	dev->si_mode = args.mda_mode;

	FUNC12(dev);
	FUNC4(devfs_inos);
	FUNC10();

	FUNC16(dev, args.mda_flags);

	*dres = dev;
	return (0);
}