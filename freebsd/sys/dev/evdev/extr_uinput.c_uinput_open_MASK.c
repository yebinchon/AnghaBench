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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct uinput_cdev_state {int /*<<< orphan*/  ucs_lock; TYPE_1__ ucs_selp; int /*<<< orphan*/  ucs_evdev; } ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_EVDEV ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct uinput_cdev_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uinput_cdev_state* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  uinput_dtor ; 
 int /*<<< orphan*/  uinput_knl_assert_locked ; 
 int /*<<< orphan*/  uinput_knl_assert_unlocked ; 
 int /*<<< orphan*/  uinput_knllock ; 
 int /*<<< orphan*/  uinput_knlunlock ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	struct uinput_cdev_state *state;

	state = FUNC3(sizeof(struct uinput_cdev_state), M_EVDEV,
	    M_WAITOK | M_ZERO);
	state->ucs_evdev = FUNC1();

	FUNC4(&state->ucs_lock, "uinput");
	FUNC2(&state->ucs_selp.si_note, &state->ucs_lock, uinput_knllock,
	    uinput_knlunlock, uinput_knl_assert_locked,
	    uinput_knl_assert_unlocked);

	FUNC0(state, uinput_dtor);
	return (0);
}