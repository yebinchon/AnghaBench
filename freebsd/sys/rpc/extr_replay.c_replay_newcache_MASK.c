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
struct replay_cache {size_t rc_maxsize; int /*<<< orphan*/  rc_lock; int /*<<< orphan*/  rc_all; int /*<<< orphan*/ * rc_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_RPC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int REPLAY_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct replay_cache* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct replay_cache *
FUNC3(size_t maxsize)
{
	struct replay_cache *rc;
	int i;

	rc = FUNC1(sizeof(*rc), M_RPC, M_WAITOK|M_ZERO);
	for (i = 0; i < REPLAY_HASH_SIZE; i++)
		FUNC0(&rc->rc_cache[i]);
	FUNC0(&rc->rc_all);
	FUNC2(&rc->rc_lock, "rc_lock", NULL, MTX_DEF);
	rc->rc_maxsize = maxsize;

	return (rc);
}