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
struct imcsmb_softc {int /*<<< orphan*/  imcsmb_pci; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int SMB_DONTWAIT ; 
#define  SMB_RELEASE_BUS 129 
#define  SMB_REQUEST_BUS 128 
 struct imcsmb_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, int index, void *data)
{
	struct imcsmb_softc *sc;
	int *how;
	int rc;

	sc = FUNC0(dev);
	how = (int *) data;

	switch (index) {
	case SMB_REQUEST_BUS: {
		if (*how != SMB_DONTWAIT) {
			rc = EINVAL;
			goto out;
		}
		rc = FUNC2(sc->imcsmb_pci);
		break;
	}
	case SMB_RELEASE_BUS:
		FUNC1(sc->imcsmb_pci);
		rc = 0;
		break;
	default:
		rc = EINVAL;
		break;
	}

out:
	return (rc);
}