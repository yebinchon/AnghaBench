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
struct TYPE_2__ {int filter; } ;
struct wpi_softc {TYPE_1__ rxon; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPI_FILTER_BSS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC1(struct wpi_softc *sc)
{
	return (sc->rxon.filter & FUNC0(WPI_FILTER_BSS)) != 0;
}