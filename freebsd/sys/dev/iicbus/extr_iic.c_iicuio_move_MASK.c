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
struct uio {int uio_resid; scalar_t__ uio_rw; } ;
struct iic_cdevpriv {TYPE_1__* sc; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ UIO_READ ; 
 scalar_t__ UIO_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,struct uio*) ; 

__attribute__((used)) static int
FUNC5(struct iic_cdevpriv *priv, struct uio *uio, int last)
{
	device_t parent;
	int error, num_bytes, transferred_bytes, written_bytes;
	char buffer[128];

	parent = FUNC1(priv->sc->sc_dev);
	error = 0;

	/*
	 * We can only transfer up to sizeof(buffer) bytes in 1 shot, so loop until
	 * everything has been transferred.
	*/
	while ((error == 0) && (uio->uio_resid > 0)) {

		num_bytes = FUNC0(uio->uio_resid, sizeof(buffer));
		transferred_bytes = 0;

		if (uio->uio_rw == UIO_WRITE) {
			error = FUNC4(buffer, num_bytes, uio);

			while ((error == 0) && (transferred_bytes < num_bytes)) {
				written_bytes = 0;
				error = FUNC3(parent, &buffer[transferred_bytes],
				    num_bytes - transferred_bytes, &written_bytes, 0);
				transferred_bytes += written_bytes;
			}
				
		} else if (uio->uio_rw == UIO_READ) {
			error = FUNC2(parent, buffer,
			    num_bytes, &transferred_bytes,
			    ((uio->uio_resid <= sizeof(buffer)) ? last : 0), 0);
			if (error == 0)
				error = FUNC4(buffer, transferred_bytes, uio);
		}
	}

	return (error);
}