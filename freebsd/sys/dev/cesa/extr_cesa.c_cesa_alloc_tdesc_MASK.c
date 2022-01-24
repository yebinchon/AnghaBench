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
struct cesa_tdma_desc {int dummy; } ;
struct cesa_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cesa_softc*,struct cesa_tdma_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tdesc ; 

__attribute__((used)) static struct cesa_tdma_desc *
FUNC2(struct cesa_softc *sc)
{
	struct cesa_tdma_desc *ctd;

	FUNC0(sc, ctd, tdesc);

	if (!ctd)
		FUNC1(sc->sc_dev, "TDMA descriptors pool exhaused. "
		    "Consider increasing CESA_TDMA_DESCRIPTORS.\n");

	return (ctd);
}