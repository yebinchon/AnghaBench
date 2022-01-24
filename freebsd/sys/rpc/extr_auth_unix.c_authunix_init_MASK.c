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
 int AUTH_UNIX_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  auth_unix_all ; 
 int /*<<< orphan*/ * auth_unix_cache ; 
 int /*<<< orphan*/  auth_unix_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC2(void *dummy)
{
	int i;

	for (i = 0; i < AUTH_UNIX_HASH_SIZE; i++)
		FUNC0(&auth_unix_cache[i]);
	FUNC0(&auth_unix_all);
	FUNC1(&auth_unix_lock, "auth_unix_lock");
}