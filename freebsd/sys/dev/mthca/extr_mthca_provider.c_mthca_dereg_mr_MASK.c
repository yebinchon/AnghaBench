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
struct mthca_mr {scalar_t__ umem; } ;
struct ib_mr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_mr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mthca_mr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mthca_mr* FUNC4 (struct ib_mr*) ; 

__attribute__((used)) static int FUNC5(struct ib_mr *mr)
{
	struct mthca_mr *mmr = FUNC4(mr);

	FUNC2(FUNC3(mr->device), mmr);
	if (mmr->umem)
		FUNC0(mmr->umem);
	FUNC1(mmr);

	return 0;
}