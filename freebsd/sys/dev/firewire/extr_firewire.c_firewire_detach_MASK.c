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
struct fw_device {int dummy; } ;
struct firewire_softc {struct firewire_comm* fc; } ;
struct firewire_comm {int /*<<< orphan*/  wait_lock; int /*<<< orphan*/  tlabel_lock; struct fw_device* crom_src_buf; struct fw_device* speed_map; struct fw_device* topology_map; int /*<<< orphan*/  devices; int /*<<< orphan*/  busprobe_callout; int /*<<< orphan*/  bmr_callout; int /*<<< orphan*/  timeout_callout; TYPE_1__* arq; int /*<<< orphan*/  probe_thread; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ maxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWBUSDETACH ; 
 int /*<<< orphan*/  M_FW ; 
 int /*<<< orphan*/  PWAIT ; 
 struct fw_device* FUNC0 (int /*<<< orphan*/ *) ; 
 struct fw_device* FUNC1 (struct fw_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct firewire_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct firewire_comm*) ; 
 int FUNC7 (struct firewire_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct firewire_comm*) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct firewire_softc *sc;
	struct firewire_comm *fc;
	struct fw_device *fwdev, *fwdev_next;
	int err;

	sc = FUNC4(dev);
	fc = sc->fc;
	FUNC10(&fc->wait_lock);
	fc->status = FWBUSDETACH;
	FUNC13(fc);
	if (FUNC8(fc->probe_thread, &fc->wait_lock, PWAIT, "fwthr", hz * 60))
		FUNC12("firewire probe thread didn't die\n");
	FUNC11(&fc->wait_lock);

	if (fc->arq != 0 && fc->arq->maxq > 0)
		FUNC6(fc);

	if ((err = FUNC7(sc)) != 0)
		return err;

	if ((err = FUNC2(dev)) != 0)
		return err;

	FUNC3(&fc->timeout_callout);
	FUNC3(&fc->bmr_callout);
	FUNC3(&fc->busprobe_callout);

	/* XXX xfer_free and untimeout on all xfers */
	for (fwdev = FUNC0(&fc->devices); fwdev != NULL;
	     fwdev = fwdev_next) {
		fwdev_next = FUNC1(fwdev, link);
		FUNC5(fwdev, M_FW);
	}
	FUNC5(fc->topology_map, M_FW);
	FUNC5(fc->speed_map, M_FW);
	FUNC5(fc->crom_src_buf, M_FW);

	FUNC9(&fc->tlabel_lock);
	FUNC9(&fc->wait_lock);
	return (0);
}