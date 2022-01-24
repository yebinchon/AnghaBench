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
struct cache_mp_read_session_ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct cache_mp_read_session_*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct cache_mp_read_session_*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_mp_read_session_*) ; 

__attribute__((used)) static void
FUNC4(struct cache_mp_read_session_ *rs)
{

	FUNC0(destroy_cache_mp_read_session);
	FUNC2(rs != NULL);
	FUNC3(rs);
	FUNC1(destroy_cache_mp_read_session);
}