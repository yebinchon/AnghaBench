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
struct umtx_shm_reg {int dummy; } ;
struct umtx_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct umtx_shm_reg* FUNC2 (struct umtx_key const*) ; 
 int /*<<< orphan*/  umtx_shm_lock ; 

__attribute__((used)) static struct umtx_shm_reg *
FUNC3(const struct umtx_key *key)
{
	struct umtx_shm_reg *reg;

	FUNC0(&umtx_shm_lock);
	reg = FUNC2(key);
	FUNC1(&umtx_shm_lock);
	return (reg);
}