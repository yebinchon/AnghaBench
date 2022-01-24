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
struct wmt_softc {int /*<<< orphan*/ * xfer; int /*<<< orphan*/  mtx; } ;
struct evdev_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 size_t WMT_INTR_DT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct evdev_dev *evdev, void *ev_softc)
{
	struct wmt_softc *sc = ev_softc;

	FUNC0(&sc->mtx, MA_OWNED);
	FUNC1(sc->xfer[WMT_INTR_DT]);

	return (0);
}