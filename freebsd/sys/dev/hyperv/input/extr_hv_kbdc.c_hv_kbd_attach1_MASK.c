#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vmbus_chan_callback_t ;
struct TYPE_4__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  hs_chan; int /*<<< orphan*/  buflen; } ;
typedef  TYPE_1__ hv_kbd_sc ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  HV_BUFF_SIZE ; 
 int /*<<< orphan*/  HV_KBD_RINGBUFF_RECV_SZ ; 
 int /*<<< orphan*/  HV_KBD_RINGBUFF_SEND_SZ ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, vmbus_chan_callback_t cb)
{
	int ret;
	hv_kbd_sc *sc;

        sc = FUNC0(dev);
	sc->buflen = HV_BUFF_SIZE;
	sc->buf = FUNC2(sc->buflen, M_DEVBUF, M_WAITOK | M_ZERO);
	FUNC4(sc->hs_chan, false);
	ret = FUNC3(
		sc->hs_chan,
		HV_KBD_RINGBUFF_SEND_SZ,
		HV_KBD_RINGBUFF_RECV_SZ,
		NULL, 0,
		cb,
		sc);
	if (ret != 0) {
		FUNC1(sc->buf, M_DEVBUF);
	}
	return (ret);
}