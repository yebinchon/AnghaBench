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
struct TYPE_5__ {int /*<<< orphan*/ * hs_xact_ctx; int /*<<< orphan*/  dev; int /*<<< orphan*/  hs_chan; } ;
typedef  TYPE_1__ hv_kbd_sc ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HV_KBD_PROTO_REQ_SZ ; 
 int /*<<< orphan*/  HV_KBD_PROTO_RESP_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  hv_kbd_read_channel ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	int error = 0;
	hv_kbd_sc *sc;

	sc = FUNC1(dev);
	sc->hs_chan = FUNC8(dev);
	sc->dev = dev;
	FUNC6(sc);
	sc->hs_xact_ctx = FUNC9(FUNC0(dev),
	    HV_KBD_PROTO_REQ_SZ, HV_KBD_PROTO_RESP_SZ, 0);
	if (sc->hs_xact_ctx == NULL) {
		error = ENOMEM;
		goto failed;
	}

	error = FUNC2(dev, hv_kbd_read_channel);
	if (error)
		goto failed;
	error = FUNC3(sc);
	if (error)
		goto failed;

	error = FUNC5(dev);
	if (error)
		goto failed;
	FUNC7(dev);
	return (0);
failed:
	FUNC4(dev);
	return (error);
}