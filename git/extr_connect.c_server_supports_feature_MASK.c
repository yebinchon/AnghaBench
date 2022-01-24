#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int argc; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 TYPE_1__ server_capabilities_v2 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,char const**) ; 

int FUNC4(const char *c, const char *feature,
			    int die_on_error)
{
	int i;

	for (i = 0; i < server_capabilities_v2.argc; i++) {
		const char *out;
		if (FUNC3(server_capabilities_v2.argv[i], c, &out) &&
		    (!*out || *(out++) == '=')) {
			if (FUNC2(out, feature))
				return 1;
			else
				break;
		}
	}

	if (die_on_error)
		FUNC1(FUNC0("server doesn't support feature '%s'"), feature);

	return 0;
}