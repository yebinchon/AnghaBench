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
struct work_item {int /*<<< orphan*/  source; } ;
struct grep_opt {struct work_item* output_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct work_item* FUNC2 () ; 
 int FUNC3 (struct grep_opt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct work_item*) ; 

__attribute__((used)) static void *FUNC6(void *arg)
{
	int hit = 0;
	struct grep_opt *opt = arg;

	while (1) {
		struct work_item *w = FUNC2();
		if (!w)
			break;

		opt->output_priv = w;
		hit |= FUNC3(opt, &w->source);
		FUNC4(&w->source);
		FUNC5(w);
	}
	FUNC1(arg);
	FUNC0(arg);

	return (void*) (intptr_t) hit;
}