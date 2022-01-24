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
struct sc_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct sc_chinfo {int /*<<< orphan*/ * data; struct sc_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_ENVY24 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(kobj_t obj, void *data)
{
	struct sc_chinfo *ch = data;
	struct sc_info *sc = ch->parent;

#if(0)
	device_printf(sc->dev, "envy24chan_free()\n");
#endif
	FUNC2(sc->lock);
	if (ch->data != NULL) {
		FUNC1(ch->data, M_ENVY24);
		ch->data = NULL;
	}
	FUNC3(sc->lock);

	return 0;
}