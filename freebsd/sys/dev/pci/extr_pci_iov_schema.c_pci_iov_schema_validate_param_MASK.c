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
struct config_type_validator {int (* validate ) (struct config_type_validator const*,int /*<<< orphan*/  const*,char const*) ;} ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 struct config_type_validator* FUNC2 (char const*) ; 
 int FUNC3 (struct config_type_validator const*,int /*<<< orphan*/  const*,char const*) ; 

__attribute__((used)) static int
FUNC4(const nvlist_t *schema_param, const char *name,
    const nvlist_t *config)
{
	const struct config_type_validator *validator;
	const char *type;

	type = FUNC1(schema_param, "type");
	validator = FUNC2(type);

	FUNC0(validator != NULL,
	    ("Schema was not validated: Unknown type %s", type));

	return (validator->validate(validator, config, name));
}