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
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct rpc_msg {int dummy; } ;
struct replay_cache_entry {int rce_hash; int /*<<< orphan*/  rce_addr; struct rpc_msg rce_msg; } ;
struct replay_cache {int /*<<< orphan*/  rc_all; int /*<<< orphan*/ * rc_cache; int /*<<< orphan*/  rc_count; int /*<<< orphan*/  rc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_RPC ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct replay_cache_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct replay_cache_entry* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rce_alllink ; 
 int /*<<< orphan*/  rce_link ; 

__attribute__((used)) static struct replay_cache_entry *
FUNC4(struct replay_cache *rc,
    struct rpc_msg *msg, struct sockaddr *addr, int h)
{
	struct replay_cache_entry *rce;

	FUNC3(&rc->rc_lock, MA_OWNED);

	rc->rc_count++;
	rce = FUNC2(sizeof(*rce), M_RPC, M_NOWAIT|M_ZERO);
	if (!rce)
		return (NULL);
	rce->rce_hash = h;
	rce->rce_msg = *msg;
	FUNC1(addr, &rce->rce_addr, addr->sa_len);

	FUNC0(&rc->rc_cache[h], rce, rce_link);
	FUNC0(&rc->rc_all, rce, rce_alllink);

	return (rce);
}