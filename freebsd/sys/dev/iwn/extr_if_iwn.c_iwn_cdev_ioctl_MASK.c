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
struct thread {int dummy; } ;
struct iwn_stats {int dummy; } ;
struct iwn_softc {int /*<<< orphan*/  last_stat; } ;
struct iwn_ioctl_data {int /*<<< orphan*/  dst_addr; } ;
struct cdev {struct iwn_softc* si_drv1; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwn_softc*) ; 
 int /*<<< orphan*/  PRIV_DRIVER ; 
#define  SIOCGIWNSTATS 129 
#define  SIOCZIWNSTATS 128 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, unsigned long cmd, caddr_t data, int fflag,
    struct thread *td)
{
	int rc;
	struct iwn_softc *sc = dev->si_drv1;
	struct iwn_ioctl_data *d;

	rc = FUNC4(td, PRIV_DRIVER);
	if (rc != 0)
		return (0);

	switch (cmd) {
	case SIOCGIWNSTATS:
		d = (struct iwn_ioctl_data *) data;
		FUNC0(sc);
		/* XXX validate permissions/memory/etc? */
		rc = FUNC2(&sc->last_stat, d->dst_addr, sizeof(struct iwn_stats));
		FUNC1(sc);
		break;
	case SIOCZIWNSTATS:
		FUNC0(sc);
		FUNC3(&sc->last_stat, 0, sizeof(struct iwn_stats));
		FUNC1(sc);
		break;
	default:
		rc = EINVAL;
		break;
	}
	return (rc);
}