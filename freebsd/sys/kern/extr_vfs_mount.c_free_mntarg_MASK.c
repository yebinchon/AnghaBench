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
struct mntarg {struct mntarg* v; int /*<<< orphan*/  list; } ;
struct mntaarg {struct mntaarg* v; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mntarg* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mntarg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC4(struct mntarg *ma)
{
	struct mntaarg *maa;

	while (!FUNC0(&ma->list)) {
		maa = FUNC1(&ma->list);
		FUNC2(&ma->list, next);
		FUNC3(maa, M_MOUNT);
	}
	FUNC3(ma->v, M_MOUNT);
	FUNC3(ma, M_MOUNT);
}