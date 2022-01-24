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
struct beri_softc {void* control_write; void* control_read; void* data_write; void* data_read; void* data_size; int /*<<< orphan*/  dev; int /*<<< orphan*/  devname; } ;
typedef  int phandle_t ;
typedef  void* pcell_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,void**,int) ; 
 scalar_t__ FUNC1 (int,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct beri_softc *sc)
{
	pcell_t dts_value[0];
	phandle_t node;
	int len;

	if ((node = FUNC4(sc->dev)) == -1)
		return (ENXIO);

	/* get device name */
	if (FUNC1(FUNC4(sc->dev), "device_name",
		&sc->devname, sizeof(sc->devname)) <= 0) {
		FUNC3(sc->dev, "Can't get device_name\n");
		return (ENXIO);
	}

	if ((len = FUNC2(node, "data_size")) <= 0)
		return (ENXIO);
	FUNC0(node, "data_size", dts_value, len);
	sc->data_size = dts_value[0];

	if ((len = FUNC2(node, "data_read")) <= 0)
		return (ENXIO);
	FUNC0(node, "data_read", dts_value, len);
	sc->data_read = dts_value[0];

	if ((len = FUNC2(node, "data_write")) <= 0)
		return (ENXIO);
	FUNC0(node, "data_write", dts_value, len);
	sc->data_write = dts_value[0];

	if ((len = FUNC2(node, "control_read")) <= 0)
		return (ENXIO);
	FUNC0(node, "control_read", dts_value, len);
	sc->control_read = dts_value[0];

	if ((len = FUNC2(node, "control_write")) <= 0)
		return (ENXIO);
	FUNC0(node, "control_write", dts_value, len);
	sc->control_write = dts_value[0];

	return (0);
}