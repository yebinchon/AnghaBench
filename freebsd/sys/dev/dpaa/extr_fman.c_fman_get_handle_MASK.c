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
typedef  int /*<<< orphan*/  t_Handle ;
struct fman_softc {int /*<<< orphan*/  fm_handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct fman_softc* FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(device_t dev, t_Handle *fmh)
{
	struct fman_softc *sc = FUNC0(dev);

	*fmh = sc->fm_handle;

	return (0);
}