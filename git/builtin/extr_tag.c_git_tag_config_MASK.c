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
struct ref_sorting {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  colopts ; 
 int FUNC0 (char const*) ; 
 void* config_sign_tag ; 
 void* force_sign_annotate ; 
 int FUNC1 (char const*,char const*,void*) ; 
 int FUNC2 (char const*,char const*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const*,char const*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct ref_sorting**,char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(const char *var, const char *value, void *cb)
{
	int status;
	struct ref_sorting **sorting_tail = (struct ref_sorting **)cb;

	if (!FUNC7(var, "tag.gpgsign")) {
		config_sign_tag = FUNC3(var, value);
		return 0;
	}

	if (!FUNC7(var, "tag.sort")) {
		if (!value)
			return FUNC0(var);
		FUNC5(sorting_tail, value);
		return 0;
	}

	status = FUNC4(var, value, cb);
	if (status)
		return status;
	if (!FUNC7(var, "tag.forcesignannotated")) {
		force_sign_annotate = FUNC3(var, value);
		return 0;
	}

	if (FUNC6(var, "column."))
		return FUNC2(var, value, "tag", &colopts);
	return FUNC1(var, value, cb);
}