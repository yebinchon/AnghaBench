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
struct vtnet_softc {int vtnet_act_vq_pairs; int /*<<< orphan*/ * vtnet_rxqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct vtnet_softc *sc)
{
	int i;

	for (i = 0; i < sc->vtnet_act_vq_pairs; i++)
		FUNC0(&sc->vtnet_rxqs[i]);
}