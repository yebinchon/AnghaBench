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
typedef  int /*<<< orphan*/  uint32_t ;
struct wpi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpi_softc*) ; 
 int /*<<< orphan*/  WPI_MEM_RADDR ; 
 int /*<<< orphan*/  WPI_MEM_RDATA ; 
 int /*<<< orphan*/  FUNC1 (struct wpi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline uint32_t
FUNC3(struct wpi_softc *sc, uint32_t addr)
{
	FUNC2(sc, WPI_MEM_RADDR, addr);
	FUNC0(sc);
	return FUNC1(sc, WPI_MEM_RDATA);
}