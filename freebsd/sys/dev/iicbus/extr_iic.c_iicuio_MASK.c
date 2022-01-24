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
typedef  int uint8_t ;
struct uio {scalar_t__ uio_rw; } ;
struct iic_cdevpriv {int addr; TYPE_1__* sc; scalar_t__ started; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int IIC_DONTWAIT ; 
 int IIC_INTR ; 
 int /*<<< orphan*/  IIC_LAST_READ ; 
 int /*<<< orphan*/  FUNC0 (struct iic_cdevpriv*) ; 
 int /*<<< orphan*/  FUNC1 (struct iic_cdevpriv*) ; 
 int IIC_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int LSB ; 
 int O_NONBLOCK ; 
 scalar_t__ UIO_READ ; 
 int FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct iic_cdevpriv*,struct uio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct cdev *dev, struct uio *uio, int ioflag)
{
	device_t parent;
	struct iic_cdevpriv *priv;
	int error;
	uint8_t addr;

	priv = NULL;
	error = FUNC3((void**)&priv);

	if (error != 0)
		return (error);
	FUNC2(priv != NULL, ("iic cdevpriv should not be NULL!"));

	FUNC0(priv);
	if (priv->started || (priv->addr == 0)) {
		FUNC1(priv);
		return (ENXIO);
	}
	parent = FUNC4(priv->sc->sc_dev);

	error = FUNC6(parent, priv->sc->sc_dev,
	    (ioflag & O_NONBLOCK) ? IIC_DONTWAIT : (IIC_WAIT | IIC_INTR));
	if (error != 0) {
		FUNC1(priv);
		return (error);
	}

	if (uio->uio_rw == UIO_READ)
		addr = priv->addr | LSB;
	else
		addr = priv->addr & ~LSB;

	error = FUNC7(parent, addr, 0);
	if (error != 0)
	{
		FUNC5(parent, priv->sc->sc_dev);
		FUNC1(priv);
		return (error);
	}

	error = FUNC9(priv, uio, IIC_LAST_READ);

	FUNC8(parent);
	FUNC5(parent, priv->sc->sc_dev);
	FUNC1(priv);
	return (error);
}