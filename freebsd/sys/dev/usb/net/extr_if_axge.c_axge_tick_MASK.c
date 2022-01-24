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
struct usb_ether {int dummy; } ;
struct mii_data {int dummy; } ;
struct axge_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct axge_softc*,int /*<<< orphan*/ ) ; 
 struct mii_data* FUNC1 (struct axge_softc*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (struct mii_data*) ; 
 struct axge_softc* FUNC3 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC4(struct usb_ether *ue)
{
	struct axge_softc *sc;
	struct mii_data *mii;

	sc = FUNC3(ue);
	mii = FUNC1(sc);
	FUNC0(sc, MA_OWNED);

	FUNC2(mii);
}