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
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* listen_start_eh ; 
 void* listen_stop_eh ; 
 int /*<<< orphan*/  lle_event ; 
 void* lle_event_eh ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_offload_listen_start ; 
 int /*<<< orphan*/  tcp_offload_listen_stop ; 
 int /*<<< orphan*/  toe_listen_start_event ; 
 int /*<<< orphan*/  toe_listen_stop_event ; 
 int /*<<< orphan*/  toe_lle_event ; 
 int /*<<< orphan*/  toedev_list ; 
 int /*<<< orphan*/  toedev_lock ; 

__attribute__((used)) static int
FUNC3(void)
{

	FUNC2(&toedev_lock, "toedev lock", NULL, MTX_DEF);
	FUNC1(&toedev_list);

	listen_start_eh = FUNC0(tcp_offload_listen_start,
	    toe_listen_start_event, NULL, EVENTHANDLER_PRI_ANY);
	listen_stop_eh = FUNC0(tcp_offload_listen_stop,
	    toe_listen_stop_event, NULL, EVENTHANDLER_PRI_ANY);
	lle_event_eh = FUNC0(lle_event, toe_lle_event, NULL,
	    EVENTHANDLER_PRI_ANY);

	return (0);
}