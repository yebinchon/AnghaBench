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
struct strbuf {char const* buf; int len; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int PARSE_SHA1_ALLOW_EMPTY ; 
 int PARSE_SHA1_OLD ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,...) ; 
 scalar_t__ FUNC1 (char const*,struct object_id*) ; 
 char line_termination ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*) ; 
 char* FUNC3 (char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*) ; 

__attribute__((used)) static int FUNC7(struct strbuf *input, const char **next,
			  struct object_id *oid,
			  const char *command, const char *refname,
			  int flags)
{
	struct strbuf arg = STRBUF_INIT;
	int ret = 0;

	if (*next == input->buf + input->len)
		goto eof;

	if (line_termination) {
		/* Without -z, consume SP and use next argument */
		if (!**next || **next == line_termination)
			return 1;
		if (**next != ' ')
			FUNC0("%s %s: expected SP but got: %s",
			    command, refname, *next);
		(*next)++;
		*next = FUNC3(*next, &arg);
		if (arg.len) {
			if (FUNC1(arg.buf, oid))
				goto invalid;
		} else {
			/* Without -z, an empty value means all zeros: */
			FUNC2(oid);
		}
	} else {
		/* With -z, read the next NUL-terminated line */
		if (**next)
			FUNC0("%s %s: expected NUL but got: %s",
			    command, refname, *next);
		(*next)++;
		if (*next == input->buf + input->len)
			goto eof;
		FUNC4(&arg, *next);
		*next += arg.len;

		if (arg.len) {
			if (FUNC1(arg.buf, oid))
				goto invalid;
		} else if (flags & PARSE_SHA1_ALLOW_EMPTY) {
			/* With -z, treat an empty value as all zeros: */
			FUNC6("%s %s: missing <newvalue>, treating as zero",
				command, refname);
			FUNC2(oid);
		} else {
			/*
			 * With -z, an empty non-required value means
			 * unspecified:
			 */
			ret = 1;
		}
	}

	FUNC5(&arg);

	return ret;

 invalid:
	FUNC0(flags & PARSE_SHA1_OLD ?
	    "%s %s: invalid <oldvalue>: %s" :
	    "%s %s: invalid <newvalue>: %s",
	    command, refname, arg.buf);

 eof:
	FUNC0(flags & PARSE_SHA1_OLD ?
	    "%s %s: unexpected end of input when reading <oldvalue>" :
	    "%s %s: unexpected end of input when reading <newvalue>",
	    command, refname);
}