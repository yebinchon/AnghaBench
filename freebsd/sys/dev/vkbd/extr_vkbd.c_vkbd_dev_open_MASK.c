#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int ks_flags; struct cdev* ks_dev; } ;
typedef  TYPE_1__ vkbd_state_t ;
struct thread {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct TYPE_14__ {scalar_t__ kb_data; } ;
typedef  TYPE_2__ keyboard_t ;
struct TYPE_15__ {int (* probe ) (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int (* init ) (int,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int (* enable ) (TYPE_2__*) ;int /*<<< orphan*/  (* term ) (TYPE_2__*) ;int /*<<< orphan*/  (* disable ) (TYPE_2__*) ;} ;
typedef  TYPE_3__ keyboard_switch_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  KEYBOARD_NAME ; 
 int OPEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct cdev*) ; 
 int FUNC3 (TYPE_2__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC11(struct cdev *dev, int flag, int mode, struct thread *td)
{
	int			 unit = FUNC2(dev), error;
	keyboard_switch_t	*sw = NULL;
	keyboard_t		*kbd = NULL;
	vkbd_state_t		*state = (vkbd_state_t *) dev->si_drv1;

	/* XXX FIXME: dev->si_drv1 locking */
	if (state == NULL) {
		if ((sw = FUNC4(KEYBOARD_NAME)) == NULL)
			return (ENXIO);

		if ((error = (*sw->probe)(unit, NULL, 0)) != 0 ||
		    (error = (*sw->init)(unit, &kbd, NULL, 0)) != 0)
			return (error);

		state = (vkbd_state_t *) kbd->kb_data;

		if ((error = (*sw->enable)(kbd)) != 0) {
			(*sw->term)(kbd);
			return (error);
		}

#ifdef KBD_INSTALL_CDEV
		if ((error = kbd_attach(kbd)) != 0) {
			(*sw->disable)(kbd);
			(*sw->term)(kbd);
			return (error);
		}
#endif /* def KBD_INSTALL_CDEV */

		dev->si_drv1 = kbd->kb_data;
	}

	FUNC0(state);

	if (state->ks_flags & OPEN) {
		FUNC1(state);
		return (EBUSY);
	}

	state->ks_flags |= OPEN;
	state->ks_dev = dev;

	FUNC1(state);

	return (0);
}