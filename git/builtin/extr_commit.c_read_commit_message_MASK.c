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
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 () ; 
 char const* FUNC3 (struct commit*,int /*<<< orphan*/ *,char const*) ; 
 struct commit* FUNC4 (char const*) ; 

__attribute__((used)) static const char *FUNC5(const char *name)
{
	const char *out_enc;
	struct commit *commit;

	commit = FUNC4(name);
	if (!commit)
		FUNC1(FUNC0("could not lookup commit %s"), name);
	out_enc = FUNC2();
	return FUNC3(commit, NULL, out_enc);
}