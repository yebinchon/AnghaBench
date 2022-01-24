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
struct process_trailer_options {int only_trailers; int only_input; int unfold; } ;
struct option {struct process_trailer_options* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(const struct option *opt, const char *arg,
			   int unset)
{
	struct process_trailer_options *v = opt->value;
	v->only_trailers = 1;
	v->only_input = 1;
	v->unfold = 1;
	FUNC1(unset);
	FUNC0(arg);
	return 0;
}