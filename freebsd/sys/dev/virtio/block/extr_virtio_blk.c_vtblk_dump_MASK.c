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
struct vtblk_softc {int dummy; } ;
struct disk {struct vtblk_softc* d_drv1; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtblk_softc*) ; 
 int FUNC4 (struct vtblk_softc*,void*,scalar_t__,size_t) ; 

__attribute__((used)) static int
FUNC5(void *arg, void *virtual, vm_offset_t physical, off_t offset,
    size_t length)
{
	struct disk *dp;
	struct vtblk_softc *sc;
	int error;

	dp = arg;
	error = 0;

	if ((sc = dp->d_drv1) == NULL)
		return (ENXIO);

	FUNC0(sc);

	FUNC3(sc);

	if (length > 0)
		error = FUNC4(sc, virtual, offset, length);
	if (error || (virtual == NULL && offset == 0))
		FUNC2(sc);

	FUNC1(sc);

	return (error);
}