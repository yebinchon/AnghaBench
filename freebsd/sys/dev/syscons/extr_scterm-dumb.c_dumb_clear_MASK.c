#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* sc; int /*<<< orphan*/  vtb; } ;
typedef  TYPE_2__ scr_stat ;
struct TYPE_6__ {int /*<<< orphan*/ * scr_map; } ;

/* Variables and functions */
 int SC_NORM_ATTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(scr_stat *scp)
{
	FUNC1(scp, 0, 0);
	FUNC2(&scp->vtb, scp->sc->scr_map[0x20], SC_NORM_ATTR << 8);
	FUNC0(scp);
}