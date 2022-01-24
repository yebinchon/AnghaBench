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
struct config_set_element {char* key; int /*<<< orphan*/  ent; } ;
struct config_set {int /*<<< orphan*/  config_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  ent ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct config_set_element* FUNC3 (int /*<<< orphan*/ *,struct config_set_element*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static struct config_set_element *FUNC5(struct config_set *cs, const char *key)
{
	struct config_set_element k;
	struct config_set_element *found_entry;
	char *normalized_key;
	/*
	 * `key` may come from the user, so normalize it before using it
	 * for querying entries from the hashmap.
	 */
	if (FUNC1(key, &normalized_key, NULL))
		return NULL;

	FUNC2(&k.ent, FUNC4(normalized_key));
	k.key = normalized_key;
	found_entry = FUNC3(&cs->config_hash, &k, ent, NULL);
	FUNC0(normalized_key);
	return found_entry;
}