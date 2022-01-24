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
 int /*<<< orphan*/  IOV_SCHEMA_HASDEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 

__attribute__((used)) static nvlist_t *
FUNC2(void)
{
	nvlist_t *vf;

	vf = FUNC1();
	if (vf == NULL)
		return (NULL);

	FUNC0(vf, "passthrough", IOV_SCHEMA_HASDEFAULT, 0);

	return (vf);
}