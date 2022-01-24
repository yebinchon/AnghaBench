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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

__attribute__((used)) static nvlist_t *
FUNC5(nvlist_t **pf, nvlist_t **vf)
{
	nvlist_t *schema, *pf_driver, *vf_driver;

	/* We always take ownership of the schemas. */
	pf_driver = *pf;
	*pf = NULL;
	vf_driver = *vf;
	*vf = NULL;

	schema = FUNC4();
	if (schema == NULL)
		goto cleanup;

	FUNC2(schema, &pf_driver);
	FUNC3(schema, &vf_driver);

	if (FUNC1(schema) != 0)
		goto cleanup;

	return (schema);

cleanup:
	FUNC0(schema);
	FUNC0(pf_driver);
	FUNC0(vf_driver);
	return (NULL);
}