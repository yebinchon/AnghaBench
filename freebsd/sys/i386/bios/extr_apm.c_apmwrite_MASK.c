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
typedef  size_t u_int ;
typedef  int u_char ;
struct uio {int uio_resid; } ;
struct cdev {int dummy; } ;
struct apm_softc {int* event_filter; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ APMDEV_CTL ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ ) ; 
 size_t APM_NPMEV ; 
 int E2BIG ; 
 int EINVAL ; 
 int ENODEV ; 
 struct apm_softc apm_softc ; 
 scalar_t__ FUNC1 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct uio*) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct apm_softc *sc = &apm_softc;
	u_int event_type;
	int error;
	u_char enabled;

	if (FUNC1(dev) != APMDEV_CTL)
		return(ENODEV);
	if (uio->uio_resid != sizeof(u_int))
		return(E2BIG);

	if ((error = FUNC3((caddr_t)&event_type, sizeof(u_int), uio)))
		return(error);

	if (event_type >= APM_NPMEV)
		return(EINVAL);

	if (sc->event_filter[event_type] == 0) {
		enabled = 1;
	} else {
		enabled = 0;
	}
	sc->event_filter[event_type] = enabled;
	FUNC0("apmwrite: event 0x%x %s\n", event_type, FUNC2(enabled));

	return uio->uio_resid;
}