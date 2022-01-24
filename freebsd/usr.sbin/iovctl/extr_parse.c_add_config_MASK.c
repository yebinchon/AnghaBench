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
typedef  int /*<<< orphan*/  ucl_object_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_SCHEMA_NAME ; 
 int /*<<< orphan*/  UINT16_MAX ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  UINT8_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static void
FUNC7(const char *key, const ucl_object_t *obj, nvlist_t *config,
    const nvlist_t *schema)
{
	const char *type;

	type = FUNC5(schema, TYPE_SCHEMA_NAME);

	if (FUNC6(type, "bool") == 0)
		FUNC0(key, obj, config);
	else if (FUNC6(type, "string") == 0)
		FUNC1(key, obj, config);
	else if (FUNC6(type, "uint8_t") == 0)
		FUNC2(key, obj, config, type, UINT8_MAX);
	else if (FUNC6(type, "uint16_t") == 0)
		FUNC2(key, obj, config, type, UINT16_MAX);
	else if (FUNC6(type, "uint32_t") == 0)
		FUNC2(key, obj, config, type, UINT32_MAX);
	else if (FUNC6(type, "uint64_t") == 0)
		FUNC2(key, obj, config, type, UINT64_MAX);
	else if (FUNC6(type, "unicast-mac") == 0)
		FUNC3(key, obj, config);
	else
		FUNC4(1, "Unexpected type '%s' in schema", type);
}