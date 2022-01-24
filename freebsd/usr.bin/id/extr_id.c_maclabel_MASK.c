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
typedef  int /*<<< orphan*/  mac_t ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void)
{
	char *string;
	mac_t label;
	int error;

	error = FUNC4(&label);
	if (error == -1)
		FUNC0(1, "mac_prepare_type: %s", FUNC7(errno));

	error = FUNC3(label);
	if (error == -1)
		FUNC0(1, "mac_get_proc: %s", FUNC7(errno));

	error = FUNC5(label, &string);
	if (error == -1)
		FUNC0(1, "mac_to_text: %s", FUNC7(errno));

	(void)FUNC6("%s\n", string);
	FUNC2(label);
	FUNC1(string);
}