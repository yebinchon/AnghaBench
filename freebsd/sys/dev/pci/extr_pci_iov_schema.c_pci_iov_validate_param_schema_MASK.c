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
struct config_type_validator {int (* default_validate ) (struct config_type_validator const*,int /*<<< orphan*/  const*) ;} ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SCHEMA_NAME ; 
 int EINVAL ; 
 int /*<<< orphan*/  REQUIRED_SCHEMA_NAME ; 
 int /*<<< orphan*/  TYPE_SCHEMA_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct config_type_validator* FUNC4 (char const*) ; 
 int FUNC5 (struct config_type_validator const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC6(const nvlist_t *schema)
{
	const struct config_type_validator *validator;
	const char *type;
	int error;

	/* All parameters must define a type. */
	if (!FUNC2(schema, TYPE_SCHEMA_NAME))
		return (EINVAL);
	type = FUNC3(schema, TYPE_SCHEMA_NAME);

	validator = FUNC4(type);
	if (validator == NULL)
		return (EINVAL);

	/* Validate that the default value conforms to the type. */
	if (FUNC0(schema, DEFAULT_SCHEMA_NAME)) {
		error = validator->default_validate(validator, schema);
		if (error != 0)
			return (error);

		/* Required and Default are mutually exclusive. */
		if (FUNC0(schema, REQUIRED_SCHEMA_NAME))
			return (EINVAL);
	}

	/* The "Required" field must be a bool. */
	if (FUNC0(schema, REQUIRED_SCHEMA_NAME)) {
		if (!FUNC1(schema, REQUIRED_SCHEMA_NAME))
			return (EINVAL);
	}

	return (0);
}