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
 size_t CHECKOUT_ALL ; 
 size_t checkout_stage ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ nul_term_line ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__** topath ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC3(const char *name, const char *prefix)
{
	int i;

	if (CHECKOUT_ALL == checkout_stage) {
		for (i = 1; i < 4; i++) {
			if (i > 1)
				FUNC1(' ');
			if (topath[i][0])
				FUNC0(topath[i], stdout);
			else
				FUNC1('.');
		}
	} else
		FUNC0(topath[checkout_stage], stdout);

	FUNC1('\t');
	FUNC2(name, prefix, stdout,
				   nul_term_line ? '\0' : '\n');

	for (i = 0; i < 4; i++) {
		topath[i][0] = 0;
	}
}