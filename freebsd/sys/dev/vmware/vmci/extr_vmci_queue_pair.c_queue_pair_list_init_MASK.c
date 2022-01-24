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
struct queue_pair_list {int /*<<< orphan*/  mutex; int /*<<< orphan*/  hibernate; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static inline int
FUNC3(struct queue_pair_list *qp_list)
{
	int ret;

	FUNC1(&qp_list->head);
	FUNC0(&qp_list->hibernate, 0);
	ret = FUNC2(&qp_list->mutex, "VMCI QP List lock");
	return (ret);
}