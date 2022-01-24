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
struct mtkswitch_softc {int /*<<< orphan*/ ** miibus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 int MTKSWITCH_MAX_PHYS ; 
 struct mii_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline struct mii_data *
FUNC2(struct mtkswitch_softc *sc, int port)
{
	int phy = FUNC1(port);

	if (phy < 0 || phy >= MTKSWITCH_MAX_PHYS || sc->miibus[phy] == NULL)
		return (NULL);

	return (FUNC0(sc->miibus[phy]));
}