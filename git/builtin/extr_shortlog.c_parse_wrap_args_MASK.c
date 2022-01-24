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
struct shortlog {int wrap_lines; scalar_t__ wrap; scalar_t__ in1; scalar_t__ in2; } ;
struct option {struct shortlog* value; } ;

/* Variables and functions */
 void* DEFAULT_INDENT1 ; 
 void* DEFAULT_INDENT2 ; 
 void* DEFAULT_WRAPLEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (char const**,char,void*) ; 
 int /*<<< orphan*/  wrap_arg_usage ; 

__attribute__((used)) static int FUNC2(const struct option *opt, const char *arg, int unset)
{
	struct shortlog *log = opt->value;

	log->wrap_lines = !unset;
	if (unset)
		return 0;
	if (!arg) {
		log->wrap = DEFAULT_WRAPLEN;
		log->in1 = DEFAULT_INDENT1;
		log->in2 = DEFAULT_INDENT2;
		return 0;
	}

	log->wrap = FUNC1(&arg, ',', DEFAULT_WRAPLEN);
	log->in1 = FUNC1(&arg, ',', DEFAULT_INDENT1);
	log->in2 = FUNC1(&arg, '\0', DEFAULT_INDENT2);
	if (log->wrap < 0 || log->in1 < 0 || log->in2 < 0)
		return FUNC0(wrap_arg_usage);
	if (log->wrap &&
	    ((log->in1 && log->wrap <= log->in1) ||
	     (log->in2 && log->wrap <= log->in2)))
		return FUNC0(wrap_arg_usage);
	return 0;
}