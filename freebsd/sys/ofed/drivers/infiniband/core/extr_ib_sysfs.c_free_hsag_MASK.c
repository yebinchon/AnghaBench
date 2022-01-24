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
struct kobject {int dummy; } ;
struct attribute_group {struct attribute_group** attrs; } ;
struct attribute {struct attribute** attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct attribute_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct kobject*,struct attribute_group*) ; 

__attribute__((used)) static void FUNC2(struct kobject *kobj, struct attribute_group *attr_group)
{
	struct attribute **attr;

	FUNC1(kobj, attr_group);

	for (attr = attr_group->attrs; *attr; attr++)
		FUNC0(*attr);
	FUNC0(attr_group);
}