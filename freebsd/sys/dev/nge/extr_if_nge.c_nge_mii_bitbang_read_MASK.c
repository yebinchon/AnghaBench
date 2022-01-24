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
struct nge_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct nge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NGE_MEAR ; 
 struct nge_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC3(device_t dev)
{
	struct nge_softc *sc;
	uint32_t val;

	sc = FUNC2(dev);

	val = FUNC1(sc, NGE_MEAR);
	FUNC0(sc, NGE_MEAR,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);

	return (val);
}