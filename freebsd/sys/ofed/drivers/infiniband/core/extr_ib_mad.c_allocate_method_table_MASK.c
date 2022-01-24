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
struct ib_mad_mgmt_method_table {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ib_mad_mgmt_method_table* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct ib_mad_mgmt_method_table **method)
{
	/* Allocate management method table */
	*method = FUNC0(sizeof **method, GFP_ATOMIC);
	if (!*method) {
		FUNC1("No memory for ib_mad_mgmt_method_table\n");
		return -ENOMEM;
	}

	return 0;
}