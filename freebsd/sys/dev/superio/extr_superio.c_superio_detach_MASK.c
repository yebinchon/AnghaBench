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
struct siosc {int /*<<< orphan*/  conf_lock; int /*<<< orphan*/  io_res; int /*<<< orphan*/  io_rid; int /*<<< orphan*/ * chardev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct siosc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct siosc *sc = FUNC4(dev);
	int error;

	error = FUNC0(dev);
	if (error != 0)
		return (error);
	if (sc->chardev != NULL)
		FUNC2(sc->chardev);
	FUNC3(dev);
	FUNC1(dev, SYS_RES_IOPORT, sc->io_rid, sc->io_res);
	FUNC5(&sc->conf_lock);
	return (0);
}