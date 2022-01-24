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
struct hifn_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIFN_RETRY_TIMEOUT ; 
 int /*<<< orphan*/  HIFN_TRDY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct hifn_softc *sc)
{
	/* NB: RETRY only responds to 8-bit reads/writes */
	FUNC0(sc->sc_dev, HIFN_RETRY_TIMEOUT, 0, 1);
	FUNC0(sc->sc_dev, HIFN_TRDY_TIMEOUT, 0, 1);
}