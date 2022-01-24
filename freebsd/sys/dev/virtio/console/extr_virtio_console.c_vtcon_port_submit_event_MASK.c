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
typedef  int /*<<< orphan*/  uint16_t ;
struct vtcon_softc {int dummy; } ;
struct vtcon_port {int /*<<< orphan*/  vtcport_id; struct vtcon_softc* vtcport_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtcon_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct vtcon_port *port, uint16_t event,
    uint16_t value)
{
	struct vtcon_softc *sc;

	sc = port->vtcport_sc;

	FUNC0(sc, port->vtcport_id, event, value);
}