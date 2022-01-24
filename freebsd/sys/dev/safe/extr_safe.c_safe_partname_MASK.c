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
struct safe_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
#define  PCI_PRODUCT_SAFEXCEL 129 
#define  PCI_VENDOR_SAFENET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char*
FUNC2(struct safe_softc *sc)
{
	/* XXX sprintf numbers when not decoded */
	switch (FUNC1(sc->sc_dev)) {
	case PCI_VENDOR_SAFENET:
		switch (FUNC0(sc->sc_dev)) {
		case PCI_PRODUCT_SAFEXCEL: return "SafeNet SafeXcel-1141";
		}
		return "SafeNet unknown-part";
	}
	return "Unknown-vendor unknown-part";
}