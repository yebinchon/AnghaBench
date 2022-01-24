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
struct keys {void** keys_values; int /*<<< orphan*/ ** keys_names; } ;

/* Variables and functions */
 int KEYS_MAX ; 
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

void
FUNC3(struct keys *keys, const char *name, const char *value)
{
	int i;

	FUNC1("key to send: \"%s=%s\"", name, value);

	/*
	 * Note that we don't check for duplicates here, as they are perfectly
	 * fine in responses, e.g. the "TargetName" keys in discovery sesion
	 * response.
	 */
	for (i = 0; i < KEYS_MAX; i++) {
		if (keys->keys_names[i] == NULL) {
			keys->keys_names[i] = FUNC0(name);
			keys->keys_values[i] = FUNC0(value);
			return;
		}
	}
	FUNC2(1, "too many keys");
}