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
struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct opal_nvram_softc {int /*<<< orphan*/  sc_buf; int /*<<< orphan*/  sc_buf_phys; scalar_t__ sc_size; } ;
struct cdev {struct opal_nvram_softc* si_drv1; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (int,scalar_t__) ; 
 scalar_t__ NVRAM_BUFSIZE ; 
#define  OPAL_HARDWARE 129 
#define  OPAL_PARAMETER 128 
 int /*<<< orphan*/  OPAL_READ_NVRAM ; 
 int OPAL_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct uio*) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct opal_nvram_softc *sc = dev->si_drv1;
	int rv, amnt;

	rv = 0;
	while (uio->uio_resid > 0) {
		amnt = FUNC0(uio->uio_resid, sc->sc_size - uio->uio_offset);
		amnt = FUNC0(amnt, NVRAM_BUFSIZE);
		if (amnt == 0)
			break;

		rv = FUNC1(OPAL_READ_NVRAM, sc->sc_buf_phys,
		    amnt, uio->uio_offset);
		if (rv != OPAL_SUCCESS) {
			switch (rv) {
			case OPAL_HARDWARE:
				rv = EIO;
				break;
			case OPAL_PARAMETER:
				rv = EINVAL;
				break;
			}
			break;
		}
		rv = FUNC2(sc->sc_buf, amnt, uio);
		if (rv != 0)
			break;
	}
	return (rv);
}