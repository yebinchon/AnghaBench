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

/* Variables and functions */
 int IV_MAX ; 
 int PIL_MAX ; 
 scalar_t__ bootverbose ; 
 int* intr_countp ; 
 int /*<<< orphan*/  intrcnt_lock ; 
 scalar_t__ FUNC0 (char const*,int) ; 
 char* intrnames ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int* pil_countp ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(int vec, const char *name, int ispil)
{
	static int intrcnt_index, stray_pil_index, stray_vec_index;
	int name_index;

	FUNC1(&intrcnt_lock);
	if (intrnames[0] == '\0') {
		/* for bitbucket */
		if (bootverbose)
			FUNC3("initalizing intr_countp\n");
		FUNC0("???", intrcnt_index++);

		stray_vec_index = intrcnt_index++;
		FUNC0("stray", stray_vec_index);
		for (name_index = 0; name_index < IV_MAX; name_index++)
			intr_countp[name_index] = stray_vec_index;

		stray_pil_index = intrcnt_index++;
		FUNC0("pil", stray_pil_index);
		for (name_index = 0; name_index < PIL_MAX; name_index++)
			pil_countp[name_index] = stray_pil_index;
	}

	if (name == NULL)
		name = "???";

	if (!ispil && intr_countp[vec] != stray_vec_index)
		name_index = intr_countp[vec];
	else if (ispil && pil_countp[vec] != stray_pil_index)
		name_index = pil_countp[vec];
	else
		name_index = intrcnt_index++;

	if (FUNC0(name, name_index))
		name_index = 0;

	if (!ispil)
		intr_countp[vec] = name_index;
	else
		pil_countp[vec] = name_index;
	FUNC2(&intrcnt_lock);
}