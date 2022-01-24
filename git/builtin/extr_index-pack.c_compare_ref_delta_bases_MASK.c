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
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int FUNC0 (struct object_id const*,struct object_id const*) ; 

__attribute__((used)) static int FUNC1(const struct object_id *oid1,
				   const struct object_id *oid2,
				   enum object_type type1,
				   enum object_type type2)
{
	int cmp = type1 - type2;
	if (cmp)
		return cmp;
	return FUNC0(oid1, oid2);
}