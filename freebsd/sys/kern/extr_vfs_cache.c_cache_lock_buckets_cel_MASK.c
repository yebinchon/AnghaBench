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
struct rwlock {int dummy; } ;
struct celockstate {struct rwlock** blp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rwlock**,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC2 (struct rwlock*) ; 

__attribute__((used)) static void
FUNC3(struct celockstate *cel, struct rwlock *blp1,
    struct rwlock *blp2)
{

	FUNC0(cel->blp[0] == NULL);
	FUNC0(cel->blp[1] == NULL);

	FUNC1(&blp1, &blp2);

	if (blp1 != NULL) {
		FUNC2(blp1);
		cel->blp[0] = blp1;
	}
	FUNC2(blp2);
	cel->blp[1] = blp2;
}