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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int ;
struct ntb_plx_softc {unsigned int spad_count1; unsigned int spad_count2; size_t b2b_mw; int /*<<< orphan*/  conf_res; TYPE_1__* mw_info; scalar_t__ spad_offp2; scalar_t__ spad_offp1; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  mw_res; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ntb_plx_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, unsigned int idx, uint32_t val)
{
	struct ntb_plx_softc *sc = FUNC1(dev);
	u_int off;

	if (idx >= sc->spad_count1 + sc->spad_count2)
		return (EINVAL);

	if (idx < sc->spad_count1)
		off = sc->spad_offp1 + idx * 4;
	else
		off = sc->spad_offp2 + (idx - sc->spad_count1) * 4;
	if (sc->b2b_mw >= 0)
		FUNC0(sc->mw_info[sc->b2b_mw].mw_res, off, val);
	else
		FUNC0(sc->conf_res, off, val);
	return (0);
}