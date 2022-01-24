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
typedef  scalar_t__ uint32_t ;
struct sfxge_softc {int /*<<< orphan*/  dev; } ;
struct sfxge_evq {int /*<<< orphan*/  exception; int /*<<< orphan*/  index; struct sfxge_softc* sc; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ EFX_EXCEPTION_EV_ERROR ; 
 scalar_t__ EFX_EXCEPTION_FWALERT_SRAM ; 
 scalar_t__ EFX_EXCEPTION_RX_DSC_ERROR ; 
 scalar_t__ EFX_EXCEPTION_RX_ERROR ; 
 scalar_t__ EFX_EXCEPTION_RX_RECOVERY ; 
 scalar_t__ EFX_EXCEPTION_TX_DSC_ERROR ; 
 scalar_t__ EFX_EXCEPTION_TX_ERROR ; 
 scalar_t__ EFX_EXCEPTION_UNKNOWN_FWALERT ; 
 scalar_t__ EFX_EXCEPTION_UNKNOWN_SENSOREVT ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_evq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_softc*) ; 

__attribute__((used)) static boolean_t
FUNC4(void *arg, uint32_t code, uint32_t data)
{
	struct sfxge_evq *evq;
	struct sfxge_softc *sc;

	evq = (struct sfxge_evq *)arg;
	FUNC1(evq);

	sc = evq->sc;

	FUNC0(sc->dev, "[%d] %s", evq->index,
			  (code == EFX_EXCEPTION_RX_RECOVERY) ? "RX_RECOVERY" :
			  (code == EFX_EXCEPTION_RX_DSC_ERROR) ? "RX_DSC_ERROR" :
			  (code == EFX_EXCEPTION_TX_DSC_ERROR) ? "TX_DSC_ERROR" :
			  (code == EFX_EXCEPTION_UNKNOWN_SENSOREVT) ? "UNKNOWN_SENSOREVT" :
			  (code == EFX_EXCEPTION_FWALERT_SRAM) ? "FWALERT_SRAM" :
			  (code == EFX_EXCEPTION_UNKNOWN_FWALERT) ? "UNKNOWN_FWALERT" :
			  (code == EFX_EXCEPTION_RX_ERROR) ? "RX_ERROR" :
			  (code == EFX_EXCEPTION_TX_ERROR) ? "TX_ERROR" :
			  (code == EFX_EXCEPTION_EV_ERROR) ? "EV_ERROR" :
			  "UNKNOWN");

	evq->exception = B_TRUE;

	if (code != EFX_EXCEPTION_UNKNOWN_SENSOREVT) {
		FUNC2(sc->dev,
			      "hardware exception (code=%u); resetting\n",
			      code);
		FUNC3(sc);
	}

	return (B_FALSE);
}