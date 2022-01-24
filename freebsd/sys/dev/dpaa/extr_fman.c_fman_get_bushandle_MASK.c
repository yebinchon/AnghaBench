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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct fman_softc {int /*<<< orphan*/  mem_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct fman_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(device_t dev, vm_offset_t *fm_base)
{
	struct fman_softc *sc = FUNC0(dev);

	*fm_base = FUNC1(sc->mem_res);

	return (0);
}