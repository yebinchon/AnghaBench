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
struct uinput_cdev_state {int dummy; } ;
struct knote {scalar_t__ kn_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uinput_cdev_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct uinput_cdev_state*) ; 

__attribute__((used)) static int
FUNC2(struct knote *kn, long hint)
{
	struct uinput_cdev_state *state;
	int ret;

	state = (struct uinput_cdev_state *)kn->kn_hook;

	FUNC1(state);

	ret = !FUNC0(state);
	return (ret);
}