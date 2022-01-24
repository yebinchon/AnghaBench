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
struct xlp_sec_softc {int /*<<< orphan*/  sec_vc_end; int /*<<< orphan*/  sec_vc_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  nlm_xlpsec_msgring_handler ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xlp_sec_softc*) ; 

__attribute__((used)) static int
FUNC2(struct xlp_sec_softc *sc)
{

	/* Register interrupt handler for the SEC CMS messages */
	if (FUNC1(sc->sec_vc_start,
	    sc->sec_vc_end, nlm_xlpsec_msgring_handler, sc) != 0) {
		FUNC0("Couldn't register sec msgring handler\n");
		return (-1);
	}

	/* Do the CMS credit initialization */
	/* Currently it is configured by default to 50 when kernel comes up */

	return (0);
}