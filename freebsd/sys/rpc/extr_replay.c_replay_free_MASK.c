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
struct replay_cache_entry {size_t rce_hash; scalar_t__ rce_repbody; } ;
struct replay_cache {int /*<<< orphan*/  rc_size; int /*<<< orphan*/  rc_all; int /*<<< orphan*/ * rc_cache; int /*<<< orphan*/  rc_count; int /*<<< orphan*/  rc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_RPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct replay_cache_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct replay_cache_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rce_alllink ; 
 int /*<<< orphan*/  rce_link ; 

__attribute__((used)) static void
FUNC5(struct replay_cache *rc, struct replay_cache_entry *rce)
{

	FUNC4(&rc->rc_lock, MA_OWNED);

	rc->rc_count--;
	FUNC0(&rc->rc_cache[rce->rce_hash], rce, rce_link);
	FUNC0(&rc->rc_all, rce, rce_alllink);
	if (rce->rce_repbody) {
		rc->rc_size -= FUNC3(rce->rce_repbody, NULL);
		FUNC2(rce->rce_repbody);
	}
	FUNC1(rce, M_RPC);
}