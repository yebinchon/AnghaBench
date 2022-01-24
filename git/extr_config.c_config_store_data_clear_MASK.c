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
struct config_store_data {int /*<<< orphan*/ * seen; int /*<<< orphan*/ * parsed; int /*<<< orphan*/ * value_regex; int /*<<< orphan*/ * key; } ;

/* Variables and functions */
 int /*<<< orphan*/ * CONFIG_REGEX_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct config_store_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct config_store_data *store)
{
	FUNC0(store->key);
	if (store->value_regex != NULL &&
	    store->value_regex != CONFIG_REGEX_NONE) {
		FUNC2(store->value_regex);
		FUNC0(store->value_regex);
	}
	FUNC0(store->parsed);
	FUNC0(store->seen);
	FUNC1(store, 0, sizeof(*store));
}