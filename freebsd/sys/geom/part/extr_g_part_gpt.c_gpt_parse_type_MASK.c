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
struct uuid {int dummy; } ;
struct g_part_uuid_alias {struct uuid* uuid; int /*<<< orphan*/  alias; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct uuid*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 struct g_part_uuid_alias* gpt_uuid_alias_match ; 
 int /*<<< orphan*/  gpt_uuid_unused ; 
 int FUNC2 (char const*,struct uuid*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC4(const char *type, struct uuid *uuid)
{
	struct uuid tmp;
	const char *alias;
	int error;
	struct g_part_uuid_alias *uap;

	if (type[0] == '!') {
		error = FUNC2(type + 1, &tmp);
		if (error)
			return (error);
		if (FUNC0(&tmp, &gpt_uuid_unused))
			return (EINVAL);
		*uuid = tmp;
		return (0);
	}
	for (uap = &gpt_uuid_alias_match[0]; uap->uuid; uap++) {
		alias = FUNC1(uap->alias);
		if (!FUNC3(type, alias)) {
			*uuid = *uap->uuid;
			return (0);
		}
	}
	return (EINVAL);
}