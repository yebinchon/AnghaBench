#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  keystroke_info ;
struct TYPE_3__ {int /*<<< orphan*/  ks_mtx; int /*<<< orphan*/  ks_queue; int /*<<< orphan*/  ks_free_list; } ;
typedef  TYPE_1__ hv_kbd_sc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  slink ; 

__attribute__((used)) static void
FUNC8(hv_kbd_sc *sc)
{
	keystroke_info *ksi;
	while (!FUNC0(&sc->ks_free_list)) {
		ksi = FUNC1(&sc->ks_free_list);
		FUNC2(ksi, link);
		FUNC6(ksi, M_DEVBUF);
	}
	while (!FUNC3(&sc->ks_queue)) {
		ksi = FUNC4(&sc->ks_queue);
		FUNC5(&sc->ks_queue, slink);
		FUNC6(ksi, M_DEVBUF);
	}
	FUNC7(&sc->ks_mtx);
}