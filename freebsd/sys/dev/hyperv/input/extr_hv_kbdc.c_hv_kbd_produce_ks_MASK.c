#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ks; } ;
typedef  TYPE_1__ keystroke_info ;
typedef  int /*<<< orphan*/  keystroke ;
struct TYPE_9__ {int /*<<< orphan*/  ks_mtx; int /*<<< orphan*/  ks_queue; int /*<<< orphan*/  ks_free_list; } ;
typedef  TYPE_2__ hv_kbd_sc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  slink ; 

int
FUNC7(hv_kbd_sc *sc, const keystroke *ks)
{
	int ret = 0;
	keystroke_info *ksi;
	FUNC5(&sc->ks_mtx);
	if (FUNC1(&sc->ks_free_list)) {
		FUNC0(sc, "NO buffer!\n");
		ret = 1;
	} else {
		ksi = FUNC2(&sc->ks_free_list);
		FUNC3(ksi, link);
		ksi->ks = *ks;
		FUNC4(&sc->ks_queue, ksi, slink);
	}
	FUNC6(&sc->ks_mtx);
	return (ret);
}