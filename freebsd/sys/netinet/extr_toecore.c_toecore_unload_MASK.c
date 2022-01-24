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

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  listen_start_eh ; 
 int /*<<< orphan*/  listen_stop_eh ; 
 int /*<<< orphan*/  lle_event ; 
 int /*<<< orphan*/  lle_event_eh ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcp_offload_listen_start ; 
 int /*<<< orphan*/  tcp_offload_listen_stop ; 
 int /*<<< orphan*/  toedev_list ; 
 int /*<<< orphan*/  toedev_lock ; 

__attribute__((used)) static int
FUNC5(void)
{

	FUNC3(&toedev_lock);
	if (!FUNC1(&toedev_list)) {
		FUNC4(&toedev_lock);
		return (EBUSY);
	}

	FUNC0(tcp_offload_listen_start, listen_start_eh);
	FUNC0(tcp_offload_listen_stop, listen_stop_eh);
	FUNC0(lle_event, lle_event_eh);

	FUNC4(&toedev_lock);
	FUNC2(&toedev_lock);

	return (0);
}