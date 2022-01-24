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
typedef  int /*<<< orphan*/  tbuf ;
struct tap_priv {int /*<<< orphan*/ * mevp; } ;
struct net_backend {int fd; scalar_t__ opaque; } ;
typedef  int /*<<< orphan*/ * net_be_rxeof_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_EVENT ; 
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int /*<<< orphan*/  EVF_READ ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_backend*) ; 

__attribute__((used)) static int
FUNC10(struct net_backend *be, const char *devname,
	 net_be_rxeof_t cb, void *param)
{
	struct tap_priv *priv = (struct tap_priv *)be->opaque;
	char tbuf[80];
	int opt = 1;
#ifndef WITHOUT_CAPSICUM
	cap_rights_t rights;
#endif

	if (cb == NULL) {
		FUNC0(("TAP backend requires non-NULL callback\n"));
		return (-1);
	}

	FUNC7(tbuf, "/dev/");
	FUNC8(tbuf, devname, sizeof(tbuf));

	be->fd = FUNC6(tbuf, O_RDWR);
	if (be->fd == -1) {
		FUNC0(("open of tap device %s failed\n", tbuf));
		goto error;
	}

	/*
	 * Set non-blocking and register for read
	 * notifications with the event loop
	 */
	if (FUNC4(be->fd, FIONBIO, &opt) < 0) {
		FUNC0(("tap device O_NONBLOCK failed\n"));
		goto error;
	}

#ifndef WITHOUT_CAPSICUM
	FUNC1(&rights, CAP_EVENT, CAP_READ, CAP_WRITE);
	if (FUNC2(be->fd, &rights) == -1)
		FUNC3(EX_OSERR, "Unable to apply rights for sandbox");
#endif

	priv->mevp = FUNC5(be->fd, EVF_READ, cb, param);
	if (priv->mevp == NULL) {
		FUNC0(("Could not register event\n"));
		goto error;
	}

	return (0);

error:
	FUNC9(be);
	return (-1);
}