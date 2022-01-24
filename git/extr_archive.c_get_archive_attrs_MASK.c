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
struct index_state {int dummy; } ;
typedef  struct attr_check const attr_check ;

/* Variables and functions */
 struct attr_check const* FUNC0 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,char const*,struct attr_check const*) ; 

__attribute__((used)) static const struct attr_check *FUNC2(struct index_state *istate,
						  const char *path)
{
	static struct attr_check *check;
	if (!check)
		check = FUNC0("export-ignore", "export-subst", NULL);
	FUNC1(istate, path, check);
	return check;
}