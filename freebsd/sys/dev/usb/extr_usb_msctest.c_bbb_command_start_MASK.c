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
typedef  scalar_t__ usb_timeout_t ;
typedef  void* uint8_t ;
struct bbb_transfer {size_t data_len; size_t data_rem; int error; size_t cmd_len; size_t state; int /*<<< orphan*/  mtx; int /*<<< orphan*/  cv; int /*<<< orphan*/ * xfer; TYPE_1__* cbw; scalar_t__ actlen; scalar_t__ data_timeout; void* data_ptr; void* dir; void* lun; } ;
struct TYPE_2__ {scalar_t__ CBWCDB; } ;

/* Variables and functions */
 void* DIR_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,char*,char*) ; 
 scalar_t__ USB_MS_HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct bbb_transfer *sc, uint8_t dir, uint8_t lun,
    void *data_ptr, size_t data_len, void *cmd_ptr, size_t cmd_len,
    usb_timeout_t data_timeout)
{
	sc->lun = lun;
	sc->dir = data_len ? dir : DIR_NONE;
	sc->data_ptr = data_ptr;
	sc->data_len = data_len;
	sc->data_rem = data_len;
	sc->data_timeout = (data_timeout + USB_MS_HZ);
	sc->actlen = 0;
	sc->error = 0;
	sc->cmd_len = cmd_len;
	FUNC5(&sc->cbw->CBWCDB, 0, sizeof(sc->cbw->CBWCDB));
	FUNC4(&sc->cbw->CBWCDB, cmd_ptr, cmd_len);
	FUNC0(1, "SCSI cmd = %*D\n", (int)cmd_len, (char *)sc->cbw->CBWCDB, ":");

	FUNC1(&sc->mtx);
	FUNC7(sc->xfer[sc->state]);

	while (FUNC6(sc->xfer[sc->state])) {
		FUNC3(&sc->cv, &sc->mtx);
	}
	FUNC2(&sc->mtx);
	return (sc->error);
}