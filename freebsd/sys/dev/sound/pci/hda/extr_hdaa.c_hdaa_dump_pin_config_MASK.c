#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct hdaa_widget {scalar_t__ enable; int /*<<< orphan*/  nid; TYPE_1__* devinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/ * HDA_COLORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * HDA_CONNECTORS ; 
 int /*<<< orphan*/ * HDA_CONNS ; 
 int /*<<< orphan*/ * HDA_DEVS ; 
 int /*<<< orphan*/ * HDA_LOCS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC9(struct hdaa_widget *w, uint32_t conf)
{

	FUNC8(w->devinfo->dev, "%2d %08x %-2d %-2d "
	    "%-13s %-5s %-7s %-10s %-7s %d%s\n",
	    w->nid, conf,
	    FUNC0(conf),
	    FUNC7(conf),
	    HDA_DEVS[FUNC4(conf)],
	    HDA_CONNS[FUNC3(conf)],
	    HDA_CONNECTORS[FUNC2(conf)],
	    HDA_LOCS[FUNC5(conf)],
	    HDA_COLORS[FUNC1(conf)],
	    FUNC6(conf),
	    (w->enable == 0)?" DISA":"");
}