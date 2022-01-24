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
struct knote {scalar_t__ kn_hook; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct evdev_client {TYPE_1__ ec_selp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct knote *kn)
{
	struct evdev_client *client;

	client = (struct evdev_client *)kn->kn_hook;
	FUNC0(&client->ec_selp.si_note, kn, 0);
}