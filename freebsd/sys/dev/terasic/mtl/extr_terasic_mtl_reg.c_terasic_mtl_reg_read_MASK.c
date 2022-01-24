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
typedef  int /*<<< orphan*/  v ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_long ;
struct uio {scalar_t__ uio_offset; int uio_resid; } ;
struct terasic_mtl_softc {int /*<<< orphan*/  mtl_reg_res; } ;
struct cdev {struct terasic_mtl_softc* si_drv1; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,struct uio*) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, struct uio *uio, int flag)
{
	struct terasic_mtl_softc *sc;
	u_long offset, size;
	uint32_t v;
	int error;

	if (uio->uio_offset < 0 || uio->uio_offset % 4 != 0 ||
	    uio->uio_resid % 4 != 0)
		return (ENODEV);
	sc = dev->si_drv1;
	size = FUNC1(sc->mtl_reg_res);
	error = 0;
	if ((uio->uio_offset + uio->uio_resid < 0) ||
	    (uio->uio_offset + uio->uio_resid > size))
		return (ENODEV);
	while (uio->uio_resid > 0) {
		offset = uio->uio_offset;
		if (offset + sizeof(v) > size)
			return (ENODEV);
		v = FUNC0(sc->mtl_reg_res, offset);
		error = FUNC2(&v, sizeof(v), uio);
		if (error)
			return (error);
	}
	return (error);
}