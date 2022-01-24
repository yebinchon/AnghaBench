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
typedef  int uint32_t ;
struct wpi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpi_softc*) ; 
 int WPI_PRPH_DWORD ; 
 int /*<<< orphan*/  WPI_PRPH_WADDR ; 
 int /*<<< orphan*/  WPI_PRPH_WDATA ; 
 int /*<<< orphan*/  FUNC1 (struct wpi_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline void
FUNC2(struct wpi_softc *sc, uint32_t addr, uint32_t data)
{
	FUNC1(sc, WPI_PRPH_WADDR, WPI_PRPH_DWORD | addr);
	FUNC0(sc);
	FUNC1(sc, WPI_PRPH_WDATA, data);
}