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
typedef  int u_int32_t ;
struct sc_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
struct sc_chinfo {int unit; int /*<<< orphan*/  dir; struct sc_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC4(kobj_t obj, void *data)
{
	struct sc_chinfo *ch = data;
	struct sc_info *sc = ch->parent;
	u_int32_t ptr, rtn;

#if(0)
	device_printf(sc->dev, "envy24chan_getptr()\n");
#endif
	FUNC2(sc->lock);
	ptr = FUNC1(sc, ch->dir);
	rtn = ptr * ch->unit;
	FUNC3(sc->lock);

#if(0)
	device_printf(sc->dev, "envy24chan_getptr(): return %d\n",
	    rtn);
#endif
	return rtn;
}