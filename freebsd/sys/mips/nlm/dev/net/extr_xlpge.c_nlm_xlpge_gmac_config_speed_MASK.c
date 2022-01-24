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
struct nlm_xlpge_softc {scalar_t__ type; scalar_t__ mii_bus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ ILC ; 
 scalar_t__ XAUIC ; 
 struct mii_data* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_data*) ; 

__attribute__((used)) static int
FUNC2(struct nlm_xlpge_softc *sc)
{
	struct mii_data *mii;

	if (sc->type == XAUIC || sc->type == ILC)
		return (0);

	if (sc->mii_bus) {
		mii = FUNC0(sc->mii_bus);
		FUNC1(mii);
	}

	return (0);
}