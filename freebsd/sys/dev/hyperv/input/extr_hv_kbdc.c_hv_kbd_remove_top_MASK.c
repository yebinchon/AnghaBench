#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  keystroke_info ;
struct TYPE_4__ {int /*<<< orphan*/  ks_mtx; int /*<<< orphan*/  ks_free_list; int /*<<< orphan*/  ks_queue; } ;
typedef  TYPE_1__ hv_kbd_sc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  slink ; 

int
FUNC7(hv_kbd_sc *sc)
{
	int ret = 0;
	keystroke_info *ksi = NULL;
	FUNC5(&sc->ks_mtx);
	if (FUNC2(&sc->ks_queue)) {
		FUNC0(sc, "Empty queue!\n");
		ret = 1;
	} else {
		ksi = FUNC3(&sc->ks_queue);
		FUNC4(&sc->ks_queue, slink);
		FUNC1(&sc->ks_free_list, ksi, link);
	}
	FUNC6(&sc->ks_mtx);
	return (ret);
}