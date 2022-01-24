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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  PF_CONFIG_NAME ; 
 int /*<<< orphan*/  VF_SCHEMA_NAME ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 

int
FUNC2(const nvlist_t *schema)
{
	int error;

	error = FUNC0(schema, PF_CONFIG_NAME);
	if (error != 0)
		return (error);

	error = FUNC0(schema, VF_SCHEMA_NAME);
	if (error != 0)
		return (error);

	return (FUNC1(schema));
}