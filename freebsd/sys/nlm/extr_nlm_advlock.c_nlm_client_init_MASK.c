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
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int NLM_SVID_HASH_SIZE ; 
 scalar_t__ PID_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nlm_file_svids ; 
 int /*<<< orphan*/  nlm_svid_allocator ; 
 int /*<<< orphan*/  nlm_svid_lock ; 

__attribute__((used)) static void
FUNC3(void *dummy)
{
	int i;

	FUNC1(&nlm_svid_lock, "NLM svid lock", NULL, MTX_DEF);
	/* pid_max cannot be greater than PID_MAX */
	nlm_svid_allocator = FUNC2(PID_MAX + 2, INT_MAX, &nlm_svid_lock);
	for (i = 0; i < NLM_SVID_HASH_SIZE; i++)
		FUNC0(&nlm_file_svids[i]);
}