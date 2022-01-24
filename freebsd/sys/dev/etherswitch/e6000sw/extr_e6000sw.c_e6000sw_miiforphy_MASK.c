#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mii_data {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * miibus; } ;
typedef  TYPE_1__ e6000sw_softc_t ;

/* Variables and functions */
 struct mii_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static __inline struct mii_data*
FUNC2(e6000sw_softc_t *sc, unsigned int phy)
{

	if (!FUNC1(sc, phy))
		return (NULL);

	return (FUNC0(sc->miibus[phy]));
}