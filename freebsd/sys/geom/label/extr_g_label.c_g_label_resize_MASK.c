#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct g_consumer {TYPE_1__* provider; TYPE_2__* geom; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  provider; } ;
struct TYPE_4__ {int /*<<< orphan*/  sectorsize; int /*<<< orphan*/  mediasize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_SLICE_CONFIG_FORCE ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(struct g_consumer *cp)
{

	FUNC0(1, "Label %s resized.",
	    FUNC1(&cp->geom->provider)->name);

	FUNC2(cp->geom, 0, G_SLICE_CONFIG_FORCE, (off_t)0,
	    cp->provider->mediasize, cp->provider->sectorsize, "notused");
}