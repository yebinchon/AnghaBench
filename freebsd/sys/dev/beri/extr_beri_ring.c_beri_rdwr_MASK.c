#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct uio {int uio_resid; scalar_t__ uio_rw; } ;
struct cdev {struct beri_softc* si_drv1; } ;
struct beri_softc {int data_size; scalar_t__ bsh; scalar_t__ data_read; scalar_t__ data_write; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int in; int out; } ;
typedef  TYPE_1__ control_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ FUNC1 (struct beri_softc*,int) ; 
 int FUNC2 (struct beri_softc*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct beri_softc*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,struct uio*) ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct beri_softc *sc;
	uint32_t offset;
	control_reg_t c;
	uint16_t *ptr;
	uint8_t *dst;
	int stock;
	int dir;
	int amount;
	int count;

	sc = dev->si_drv1;

	dir = uio->uio_rw ? 1 : 0;

	c = FUNC1(sc, dir);
	stock = FUNC2(sc, dir, &c);
	if (stock < uio->uio_resid) {
		FUNC0(sc->dev, "Err: no data/space available\n");
		return (1);
	}

	amount = uio->uio_resid;
	ptr = dir ? &c.in : &c.out;
	count = (sc->data_size - *ptr);

	offset = dir ? sc->data_write : sc->data_read;
	dst = (uint8_t *)(sc->bsh + offset);

	if (amount <= count) {
		FUNC4(dst + *ptr, amount, uio);
	} else {
		FUNC4(dst + *ptr, count, uio);
		FUNC4(dst, (amount - count), uio);
	}

	*ptr = (*ptr + amount) % sc->data_size;
	FUNC3(sc, dir, &c);

	return (0);
}