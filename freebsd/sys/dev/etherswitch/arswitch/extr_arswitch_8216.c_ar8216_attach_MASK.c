#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ es_nvlangroups; } ;
struct TYPE_3__ {int /*<<< orphan*/  arswitch_hw_global_setup; int /*<<< orphan*/  arswitch_hw_setup; } ;
struct arswitch_softc {TYPE_2__ info; TYPE_1__ hal; } ;

/* Variables and functions */
 int /*<<< orphan*/  ar8216_hw_global_setup ; 
 int /*<<< orphan*/  ar8216_hw_setup ; 

void
FUNC0(struct arswitch_softc *sc)
{

	sc->hal.arswitch_hw_setup = ar8216_hw_setup;
	sc->hal.arswitch_hw_global_setup = ar8216_hw_global_setup;

	sc->info.es_nvlangroups = 0;
}