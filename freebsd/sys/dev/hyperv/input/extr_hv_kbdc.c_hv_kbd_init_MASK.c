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
struct TYPE_3__ {int /*<<< orphan*/  ks_free_list; int /*<<< orphan*/  ks_queue; int /*<<< orphan*/  ks_mtx; } ;
typedef  TYPE_1__ hv_kbd_sc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(hv_kbd_sc *sc)
{
	const int max_list = 16;
	int i;
	keystroke_info *ksi;

	FUNC4(&sc->ks_mtx, "hv_kbdc mutex", NULL, MTX_DEF);
	FUNC0(&sc->ks_free_list);
	FUNC2(&sc->ks_queue);
	for (i = 0; i < max_list; i++) {
		ksi = FUNC3(sizeof(keystroke_info),
		    M_DEVBUF, M_WAITOK|M_ZERO);
		FUNC1(&sc->ks_free_list, ksi, link);
	}
}