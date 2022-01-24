#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct db_variable {int dummy; } ;
typedef  int /*<<< orphan*/  db_expr_t ;
struct TYPE_4__ {int /*<<< orphan*/  tf_esp; } ;

/* Variables and functions */
 int DB_VAR_GET ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* kdb_frame ; 

__attribute__((used)) static int
FUNC2(struct db_variable *vp, db_expr_t *valuep, int op)
{

	if (kdb_frame == NULL)
		return (0);

	if (op == DB_VAR_GET)
		*valuep = FUNC1(kdb_frame);
	else if (FUNC0(kdb_frame))
		kdb_frame->tf_esp = *valuep;
	return (1);
}