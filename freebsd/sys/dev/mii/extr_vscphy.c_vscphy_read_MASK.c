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
typedef  int u_int ;
struct vscphy_softc {int /*<<< orphan*/  mii_sc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int
FUNC1(struct vscphy_softc *sc, u_int reg)
{
	u_int val;

	val = FUNC0(&sc->mii_sc, reg);
	return (val);
}