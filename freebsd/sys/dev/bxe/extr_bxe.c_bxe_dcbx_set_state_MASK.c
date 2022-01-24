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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct bxe_softc {scalar_t__ dcbx_enabled; scalar_t__ dcb_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ BXE_DCBX_ENABLED_INVALID ; 
 scalar_t__ BXE_DCBX_ENABLED_OFF ; 
 scalar_t__ BXE_DCBX_ENABLED_ON_NEG_OFF ; 
 scalar_t__ BXE_DCBX_ENABLED_ON_NEG_ON ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 scalar_t__ FALSE ; 

void
FUNC2(struct bxe_softc *sc,
                   uint8_t          dcb_on,
                   uint32_t         dcbx_enabled)
{
    if (!FUNC1(sc)) {
        sc->dcb_state = dcb_on;
        sc->dcbx_enabled = dcbx_enabled;
    } else {
        sc->dcb_state = FALSE;
        sc->dcbx_enabled = BXE_DCBX_ENABLED_INVALID;
    }
    FUNC0(sc, DBG_LOAD,
          "DCB state [%s:%s]\n",
          dcb_on ? "ON" : "OFF",
          (dcbx_enabled == BXE_DCBX_ENABLED_OFF) ? "user-mode" :
          (dcbx_enabled == BXE_DCBX_ENABLED_ON_NEG_OFF) ? "on-chip static" :
          (dcbx_enabled == BXE_DCBX_ENABLED_ON_NEG_ON) ?
          "on-chip with negotiation" : "invalid");
}