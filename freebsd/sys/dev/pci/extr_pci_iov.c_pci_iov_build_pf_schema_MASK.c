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
 int /*<<< orphan*/  DRIVER_CONFIG_NAME ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  IOV_CONFIG_NAME ; 
 int /*<<< orphan*/  PF_CONFIG_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static void
FUNC4(nvlist_t *schema, nvlist_t **driver_schema)
{
	nvlist_t *pf_schema, *iov_schema;

	pf_schema = FUNC3();
	if (pf_schema == NULL) {
		FUNC1(schema, ENOMEM);
		return;
	}

	iov_schema = FUNC2();

	/*
	 * Note that if either *driver_schema or iov_schema is NULL, then
	 * nvlist_move_nvlist will put the schema in the error state and
	 * SR-IOV will fail to initialize later, so we don't have to explicitly
	 * handle that case.
	 */
	FUNC0(pf_schema, DRIVER_CONFIG_NAME, *driver_schema);
	FUNC0(pf_schema, IOV_CONFIG_NAME, iov_schema);
	FUNC0(schema, PF_CONFIG_NAME, pf_schema);
	*driver_schema = NULL;
}