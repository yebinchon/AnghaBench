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
struct nfe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*) ; 
 struct nfe_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(if_t ifp)
{
	struct nfe_softc *sc = FUNC2(ifp);

	FUNC0(sc);
	FUNC3(ifp);
	FUNC1(sc);
}