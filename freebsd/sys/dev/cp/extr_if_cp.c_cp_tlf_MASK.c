#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sppp {int pp_flags; int /*<<< orphan*/  (* pp_down ) (struct sppp*) ;} ;
struct TYPE_6__ {TYPE_1__* ifp; } ;
typedef  TYPE_2__ drv_t ;
struct TYPE_7__ {TYPE_2__* if_softc; } ;
struct TYPE_5__ {int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int PP_CISCO ; 
 int PP_FR ; 
 TYPE_3__* FUNC1 (struct sppp*) ; 
 int /*<<< orphan*/  FUNC2 (struct sppp*) ; 

__attribute__((used)) static void FUNC3 (struct sppp *sp)
{
	drv_t *d = FUNC1(sp)->if_softc;

	FUNC0 (d, ("cp_tlf\n"));
	/* XXXRIK: Don't forget to protect them by LOCK, or kill them. */
/*	cp_set_dtr (d->chan, 0);*/
/*	cp_set_rts (d->chan, 0);*/
	if (!(sp->pp_flags & PP_FR) && !(d->ifp->if_flags & PP_CISCO))
		sp->pp_down (sp);
}