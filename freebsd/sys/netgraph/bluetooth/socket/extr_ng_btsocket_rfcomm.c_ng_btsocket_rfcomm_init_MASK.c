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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  NG_BTSOCKET_WARN_LEVEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ng_btsocket_rfcomm_debug_level ; 
 int /*<<< orphan*/  ng_btsocket_rfcomm_sessions ; 
 int /*<<< orphan*/  ng_btsocket_rfcomm_sessions_mtx ; 
 int /*<<< orphan*/  ng_btsocket_rfcomm_sessions_task ; 
 int /*<<< orphan*/  ng_btsocket_rfcomm_sockets ; 
 int /*<<< orphan*/  ng_btsocket_rfcomm_sockets_mtx ; 
 int /*<<< orphan*/  ng_btsocket_rfcomm_task ; 
 int ng_btsocket_rfcomm_timo ; 

void
FUNC4(void)
{

	/* Skip initialization of globals for non-default instances. */
	if (!FUNC0(curvnet))
		return;

	ng_btsocket_rfcomm_debug_level = NG_BTSOCKET_WARN_LEVEL;
	ng_btsocket_rfcomm_timo = 60;

	/* RFCOMM task */
	FUNC2(&ng_btsocket_rfcomm_task, 0,
		ng_btsocket_rfcomm_sessions_task, NULL);

	/* RFCOMM sessions list */
	FUNC1(&ng_btsocket_rfcomm_sessions);
	FUNC3(&ng_btsocket_rfcomm_sessions_mtx,
		"btsocks_rfcomm_sessions_mtx", NULL, MTX_DEF);

	/* RFCOMM sockets list */
	FUNC1(&ng_btsocket_rfcomm_sockets);
	FUNC3(&ng_btsocket_rfcomm_sockets_mtx,
		"btsocks_rfcomm_sockets_mtx", NULL, MTX_DEF);
}