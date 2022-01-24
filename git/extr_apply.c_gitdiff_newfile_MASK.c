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
struct patch {int is_new; int /*<<< orphan*/  def_name; int /*<<< orphan*/  new_name; } ;
struct gitdiff_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gitdiff_data*,char const*,struct patch*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gitdiff_data *state,
			   const char *line,
			   struct patch *patch)
{
	patch->is_new = 1;
	FUNC0(patch->new_name);
	patch->new_name = FUNC2(patch->def_name);
	return FUNC1(state, line, patch);
}