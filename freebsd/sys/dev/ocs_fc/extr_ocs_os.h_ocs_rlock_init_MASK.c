#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ ocs_rlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_LOCK_DESC_LEN ; 
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(ocs_t *ocs, ocs_rlock_t *lock, const char *name)
{
	FUNC1(lock->name, name, MAX_LOCK_DESC_LEN);
	FUNC0(&(lock)->lock, lock->name, NULL, MTX_DEF | MTX_RECURSE | MTX_DUPOK);
}