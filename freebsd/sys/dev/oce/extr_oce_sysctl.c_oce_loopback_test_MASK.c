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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct oce_softc {int /*<<< orphan*/  port_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCE_NO_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (struct oce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct oce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static uint32_t
FUNC2(struct oce_softc *sc, uint8_t loopback_type)
{
	uint32_t status = 0;

	FUNC0(sc, sc->port_id, loopback_type, 1);
	status = FUNC1(sc, sc->port_id, loopback_type,
				1500, 2, 0xabc);
	FUNC0(sc, sc->port_id, OCE_NO_LOOPBACK, 1);

	return status;
}