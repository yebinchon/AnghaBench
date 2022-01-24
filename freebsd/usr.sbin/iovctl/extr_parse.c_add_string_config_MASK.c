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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char const**) ; 

__attribute__((used)) static void
FUNC3(const char *key, const ucl_object_t *obj, nvlist_t *config)
{
	const char *val;

	if (!FUNC2(obj, &val))
		FUNC1(key, obj, "string");

	FUNC0(config, key, val);
}