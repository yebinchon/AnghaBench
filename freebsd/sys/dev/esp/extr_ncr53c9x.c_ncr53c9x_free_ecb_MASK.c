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
struct ncr53c9x_softc {int /*<<< orphan*/  free_list; } ;
struct ncr53c9x_ecb {scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct ncr53c9x_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ncr53c9x_ecb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_links ; 

__attribute__((used)) static void
FUNC2(struct ncr53c9x_softc *sc, struct ncr53c9x_ecb *ecb)
{

	FUNC0(sc, MA_OWNED);

	ecb->flags = 0;
	FUNC1(&sc->free_list, ecb, free_links);
}