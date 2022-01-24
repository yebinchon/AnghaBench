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
struct cache_mp_write_session_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct cache_mp_write_session_request*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct cache_mp_write_session_request*)) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_mp_write_session_request*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(
	struct cache_mp_write_session_request *mp_ws_request)
{

	FUNC0(init_cache_mp_write_session_request);
	FUNC2(mp_ws_request, 0,
    		sizeof(struct cache_mp_write_session_request));
	FUNC1(init_cache_mp_write_session_request);
}