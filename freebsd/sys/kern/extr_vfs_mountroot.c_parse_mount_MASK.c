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
struct mntarg {int dummy; } ;

/* Variables and functions */
 int EDOOFUS ; 
 int ENOENT ; 
 int ERRMSGL ; 
 int /*<<< orphan*/  MNT_ROOTFS ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int FUNC1 (struct mntarg*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 struct mntarg* FUNC3 (struct mntarg*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 struct mntarg* FUNC5 (struct mntarg*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char**,char) ; 
 int FUNC7 (char**,char) ; 
 int FUNC8 (char**,char**) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int root_mount_mddev ; 
 int root_mount_timeout ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 char* FUNC12 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 
 int FUNC14 (char*,char*) ; 

__attribute__((used)) static int
FUNC15(char **conf)
{
	char *errmsg;
	struct mntarg *ma;
	char *dev, *fs, *opts, *tok;
	int delay, error, timeout;

	error = FUNC8(conf, &tok);
	if (error)
		return (error);
	fs = tok;
	error = FUNC7(&tok, ':');
	if (error) {
		FUNC0(fs, M_TEMP);
		return (error);
	}
	FUNC6(&tok, '\0');
	FUNC4(&tok);
	dev = tok;

	if (root_mount_mddev != -1) {
		/* Handle substitution for the md unit number. */
		tok = FUNC12(dev, "md#");
		if (tok != NULL)
			tok[2] = '0' + root_mount_mddev;
	}

	/* Parse options. */
	error = FUNC8(conf, &tok);
	opts = (error == 0) ? tok : NULL;

	FUNC10("Trying to mount root from %s:%s [%s]...\n", fs, dev,
	    (opts != NULL) ? opts : "");

	errmsg = FUNC2(ERRMSGL, M_TEMP, M_WAITOK | M_ZERO);

	if (FUNC13(fs) == NULL) {
		FUNC11(errmsg, "unknown file system", ERRMSGL);
		error = ENOENT;
		goto out;
	}

	error = FUNC14(fs, dev);
	if (error != 0)
		goto out;

	delay = hz / 10;
	timeout = root_mount_timeout * hz;

	for (;;) {
		ma = NULL;
		ma = FUNC3(ma, "fstype", fs, -1);
		ma = FUNC3(ma, "fspath", "/", -1);
		ma = FUNC3(ma, "from", dev, -1);
		ma = FUNC3(ma, "errmsg", errmsg, ERRMSGL);
		ma = FUNC3(ma, "ro", NULL, 0);
		ma = FUNC5(ma, opts);

		error = FUNC1(ma, MNT_ROOTFS);
		if (error == 0 || timeout <= 0)
			break;

		if (root_mount_timeout * hz == timeout ||
		    (bootverbose && timeout % hz == 0)) {
			FUNC10("Mounting from %s:%s failed with error %d; "
			    "retrying for %d more second%s\n", fs, dev, error,
			    timeout / hz, (timeout / hz > 1) ? "s" : "");
		}
		FUNC9("rmretry", delay);
		timeout -= delay;
	}
 out:
	if (error) {
		FUNC10("Mounting from %s:%s failed with error %d",
		    fs, dev, error);
		if (errmsg[0] != '\0')
			FUNC10(": %s", errmsg);
		FUNC10(".\n");
	}
	FUNC0(fs, M_TEMP);
	FUNC0(errmsg, M_TEMP);
	if (opts != NULL)
		FUNC0(opts, M_TEMP);
	/* kernel_mount can return -1 on error. */
	return ((error < 0) ? EDOOFUS : error);
}