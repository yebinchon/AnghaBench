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
struct input_file {int dummy; } ;

/* Variables and functions */
 char COMMA ; 
 char EOS ; 
 char LPAREN ; 
 int RPAREN ; 
 size_t SIZE_MAX ; 
 int TRACE_ARGS ; 
 int TRACE_CONT ; 
 int TRACE_EXPANSION ; 
 int TRACE_QUOTE ; 
 size_t FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,...) ; 
 char* lquote ; 
 int /*<<< orphan*/  FUNC2 (struct input_file*) ; 
 char* rquote ; 
 scalar_t__ stderr ; 
 int trace_flags ; 
 scalar_t__ traceout ; 

size_t
FUNC3(const char *argv[], int argc, struct input_file *inp)
{
	if (!traceout)
		traceout = stderr;
	FUNC2(inp);
	if (trace_flags & TRACE_CONT) {
		FUNC1(traceout, "%s ...\n", argv[1]);
		FUNC2(inp);
	}
	FUNC1(traceout, "%s", argv[1]);
	if ((trace_flags & TRACE_ARGS) && argc > 2) {
		char delim[3];
		int i;

		delim[0] = LPAREN;
		delim[1] = EOS;
		for (i = 2; i < argc; i++) {
			FUNC1(traceout, "%s%s%s%s", delim,
			    (trace_flags & TRACE_QUOTE) ? lquote : "",
			    argv[i],
			    (trace_flags & TRACE_QUOTE) ? rquote : "");
			delim[0] = COMMA;
			delim[1] = ' ';
			delim[2] = EOS;
		}
		FUNC1(traceout, "%c", RPAREN);
	}
	if (trace_flags & TRACE_CONT) {
		FUNC1(traceout, " -> ???\n");
		FUNC2(inp);
		FUNC1(traceout, argc > 2 ? "%s(...)" : "%s", argv[1]);
	}
	if (trace_flags & TRACE_EXPANSION)
		return FUNC0();
	else {
		FUNC1(traceout, "\n");
		return SIZE_MAX;
	}
}