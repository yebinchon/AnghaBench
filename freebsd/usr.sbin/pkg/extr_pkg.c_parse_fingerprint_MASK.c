#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct fingerprint {int /*<<< orphan*/  hash; scalar_t__ type; } ;
typedef  scalar_t__ hash_t ;

/* Variables and functions */
 scalar_t__ HASH_SHA256 ; 
 scalar_t__ HASH_UNKNOWN ; 
 scalar_t__ UCL_STRING ; 
 struct fingerprint* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ **,int) ; 
 char* FUNC4 (TYPE_1__ const*) ; 
 char* FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

__attribute__((used)) static struct fingerprint *
FUNC7(ucl_object_t *obj)
{
	const ucl_object_t *cur;
	ucl_object_iter_t it = NULL;
	const char *function, *fp, *key;
	struct fingerprint *f;
	hash_t fct = HASH_UNKNOWN;

	function = fp = NULL;

	while ((cur = FUNC3(obj, &it, true))) {
		key = FUNC4(cur);
		if (cur->type != UCL_STRING)
			continue;
		if (FUNC1(key, "function") == 0) {
			function = FUNC5(cur);
			continue;
		}
		if (FUNC1(key, "fingerprint") == 0) {
			fp = FUNC5(cur);
			continue;
		}
	}

	if (fp == NULL || function == NULL)
		return (NULL);

	if (FUNC1(function, "sha256") == 0)
		fct = HASH_SHA256;

	if (fct == HASH_UNKNOWN) {
		FUNC6("Unsupported hashing function: %s", function);
		return (NULL);
	}

	f = FUNC0(1, sizeof(struct fingerprint));
	f->type = fct;
	FUNC2(f->hash, fp, sizeof(f->hash));

	return (f);
}