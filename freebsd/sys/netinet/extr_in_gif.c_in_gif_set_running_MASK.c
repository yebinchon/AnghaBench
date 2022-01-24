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
struct gif_softc {TYPE_1__* gif_iphdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  ip_src; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct gif_softc*) ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct gif_softc *sc)
{

	if (FUNC1(sc->gif_iphdr->ip_src))
		FUNC0(sc)->if_drv_flags |= IFF_DRV_RUNNING;
	else
		FUNC0(sc)->if_drv_flags &= ~IFF_DRV_RUNNING;
}