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
struct sge_eq {int dummy; } ;
struct sge_wrq {int /*<<< orphan*/  adapter; int /*<<< orphan*/  wr_list; int /*<<< orphan*/  incomplete_wrs; struct sge_eq eq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sge_eq*) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_eq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sge_wrq*) ; 

__attribute__((used)) static void
FUNC5(void *arg, int n)
{
	struct sge_wrq *wrq = arg;
	struct sge_eq *eq = &wrq->eq;

	FUNC0(eq);
	if (FUNC3(&wrq->incomplete_wrs) && !FUNC2(&wrq->wr_list))
		FUNC4(wrq->adapter, wrq);
	FUNC1(eq);
}