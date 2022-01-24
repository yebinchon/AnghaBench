#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  si_note; } ;
struct tuntap_softc {int tun_flags; scalar_t__ tun_busy; int /*<<< orphan*/  tun_cv; int /*<<< orphan*/  tun_mtx; TYPE_1__* tun_drv; TYPE_2__ tun_rsel; int /*<<< orphan*/  tun_dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  if_dunit; int /*<<< orphan*/ * if_softc; int /*<<< orphan*/  if_vnet; } ;
struct TYPE_8__ {int /*<<< orphan*/  unrhdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TUN ; 
 TYPE_3__* FUNC2 (struct tuntap_softc*) ; 
 int TUN_DYING ; 
 int TUN_L2 ; 
 int /*<<< orphan*/  FUNC3 (struct tuntap_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct tuntap_softc*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct tuntap_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tun_ioctl_sx ; 

__attribute__((used)) static void
FUNC20(struct tuntap_softc *tp)
{

	FUNC3(tp);
	tp->tun_flags |= TUN_DYING;
	if (tp->tun_busy != 0)
		FUNC7(&tp->tun_cv, &tp->tun_mtx);
	else
		FUNC4(tp);

	FUNC1(FUNC2(tp)->if_vnet);

	/* destroy_dev will take care of any alias. */
	FUNC8(tp->tun_dev);
	FUNC17(&tp->tun_rsel);
	FUNC14(&tp->tun_rsel.si_note, 0);
	FUNC15(&tp->tun_rsel.si_note);
	if ((tp->tun_flags & TUN_L2) != 0) {
		FUNC9(FUNC2(tp));
	} else {
		FUNC5(FUNC2(tp));
		FUNC12(FUNC2(tp));
	}
	FUNC18(&tun_ioctl_sx);
	FUNC2(tp)->if_softc = NULL;
	FUNC19(&tun_ioctl_sx);
	FUNC11(tp->tun_drv->unrhdr, FUNC2(tp)->if_dunit);
	FUNC13(FUNC2(tp));
	FUNC16(&tp->tun_mtx);
	FUNC6(&tp->tun_cv);
	FUNC10(tp, M_TUN);
	FUNC0();
}