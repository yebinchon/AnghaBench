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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_long ;
struct uio {int uio_iovcnt; int /*<<< orphan*/  uio_rw; int /*<<< orphan*/  uio_offset; int /*<<< orphan*/  uio_resid; struct thread* uio_td; void* uio_segflg; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct iovec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;
struct iiccmd {int /*<<< orphan*/  slave; int /*<<< orphan*/  last; int /*<<< orphan*/  count; int /*<<< orphan*/  buf; } ;
struct iic_rdwr_data {int dummy; } ;
struct iic_cdevpriv {int started; int /*<<< orphan*/  addr; TYPE_1__* sc; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTTY ; 
#define  I2CRDWR 135 
#define  I2CREAD 134 
#define  I2CRPTSTART 133 
#define  I2CRSTCARD 132 
#define  I2CSADDR 131 
#define  I2CSTART 130 
#define  I2CSTOP 129 
#define  I2CWRITE 128 
 int IIC_DONTWAIT ; 
 int IIC_ENOADDR ; 
 int IIC_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct iic_cdevpriv*) ; 
 int /*<<< orphan*/  IIC_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct iic_cdevpriv*) ; 
 int IIC_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  UIO_READ ; 
 void* UIO_USERSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct iic_cdevpriv*,struct iic_rdwr_data*,int) ; 
 int FUNC12 (struct iic_cdevpriv*,struct uio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct cdev *dev, u_long cmd, caddr_t data, int flags, struct thread *td)
{
	device_t parent, iicdev;
	struct iiccmd *s;
	struct uio ubuf;
	struct iovec uvec;
	struct iic_cdevpriv *priv;
	int error;

	s = (struct iiccmd *)data;
	error = FUNC3((void**)&priv);
	if (error != 0)
		return (error);

	FUNC2(priv != NULL, ("iic cdevpriv should not be NULL!"));

	iicdev = priv->sc->sc_dev;
	parent = FUNC4(iicdev);
	FUNC0(priv);


	switch (cmd) {
	case I2CSTART:
		if (priv->started) {
			error = EINVAL;
			break;
		}
		error = FUNC7(parent, iicdev,
		    (flags & O_NONBLOCK) ? IIC_DONTWAIT : (IIC_WAIT | IIC_INTR));

		if (error == 0)
			error = FUNC9(parent, s->slave, 0);

		if (error == 0) {
			priv->addr = s->slave;
			priv->started = true;
		} else
			FUNC5(parent, iicdev);

		break;

	case I2CSTOP:
		if (priv->started) {
			error = FUNC10(parent);
			FUNC5(parent, iicdev);
			priv->started = false;
		}

		break;

	case I2CRSTCARD:
		/*
		 * Bus should be owned before we reset it.
		 * We allow the bus to be already owned as the result of an in-progress
		 * sequence; however, bus reset will always be followed by release
		 * (a new start is presumably needed for I/O anyway). */ 
		if (!priv->started)	
			error = FUNC7(parent, iicdev,
			    (flags & O_NONBLOCK) ? IIC_DONTWAIT : (IIC_WAIT | IIC_INTR));

		if (error == 0) {
			error = FUNC8(parent, IIC_UNKNOWN, 0, NULL);
			/*
			 * Ignore IIC_ENOADDR as it only means we have a master-only
			 * controller.
			 */
			if (error == IIC_ENOADDR)
				error = 0;

			FUNC5(parent, iicdev);
			priv->started = false;
		}
		break;

	case I2CWRITE:
		if (!priv->started) {
			error = EINVAL;
			break;
		}
		uvec.iov_base = s->buf;
		uvec.iov_len = s->count;
		ubuf.uio_iov = &uvec;
		ubuf.uio_iovcnt = 1;
		ubuf.uio_segflg = UIO_USERSPACE;
		ubuf.uio_td = td;
		ubuf.uio_resid = s->count;
		ubuf.uio_offset = 0;
		ubuf.uio_rw = UIO_WRITE;
		error = FUNC12(priv, &ubuf, 0);
		break;

	case I2CREAD:
		if (!priv->started) {
			error = EINVAL;
			break;
		}
		uvec.iov_base = s->buf;
		uvec.iov_len = s->count;
		ubuf.uio_iov = &uvec;
		ubuf.uio_iovcnt = 1;
		ubuf.uio_segflg = UIO_USERSPACE;
		ubuf.uio_td = td;
		ubuf.uio_resid = s->count;
		ubuf.uio_offset = 0;
		ubuf.uio_rw = UIO_READ;
		error = FUNC12(priv, &ubuf, s->last);
		break;

	case I2CRDWR:
		/*
		 * The rdwr list should be a self-contained set of
		 * transactions.  Fail if another transaction is in progress.
                 */
		if (priv->started) {
			error = EINVAL;
			break;
		}

		error = FUNC11(priv, (struct iic_rdwr_data *)data, flags);

		break;

	case I2CRPTSTART:
		if (!priv->started) {
			error = EINVAL;
			break;
		}
		error = FUNC6(parent, s->slave, 0);
		break;

	case I2CSADDR:
		priv->addr = *((uint8_t*)data);
		break;

	default:
		error = ENOTTY;
	}

	FUNC1(priv);
	return (error);
}