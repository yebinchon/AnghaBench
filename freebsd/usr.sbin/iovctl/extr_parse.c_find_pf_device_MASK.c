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
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ **,int) ; 
 char* FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,char const**) ; 

__attribute__((used)) static const char *
FUNC5(const ucl_object_t *pf)
{
	ucl_object_iter_t it;
	const ucl_object_t *obj;
	const char *key, *device;

	it = NULL;
	while ((obj = FUNC2(pf, &it, true)) != NULL) {
		key = FUNC3(obj);

		if (FUNC1(key, "device") == 0) {
			if (!FUNC4(obj, &device))
				FUNC0(1,
				    "Config PF.device must be a string");

			return (device);
		}
	}

	return (NULL);
}