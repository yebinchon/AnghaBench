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
struct nfe_softc {int /*<<< orphan*/  nfe_miibus; } ;
struct mii_data {int dummy; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfe_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_data*) ; 

__attribute__((used)) static int
FUNC5(if_t ifp)
{
	struct nfe_softc *sc = FUNC3(ifp);
	struct mii_data *mii;

	FUNC0(sc);
	mii = FUNC2(sc->nfe_miibus);
	FUNC4(mii);
	FUNC1(sc);

	return (0);
}