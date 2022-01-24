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
struct esync {int /*<<< orphan*/  e_mt; int /*<<< orphan*/  e_cond; } ;
typedef  enum ev_type { ____Placeholder_ev_type } ev_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(int fd, enum ev_type type, void *param)
{
	struct esync *sync = param;

	FUNC1(&sync->e_mt);
	FUNC0(&sync->e_cond);
	FUNC2(&sync->e_mt);
}