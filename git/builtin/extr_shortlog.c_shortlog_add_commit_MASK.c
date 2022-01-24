#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; scalar_t__ len; } ;
struct shortlog {scalar_t__ user_format; int /*<<< orphan*/  summary; scalar_t__ email; scalar_t__ committer; int /*<<< orphan*/  abbrev; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct pretty_print_context {int print_email_subject; int /*<<< orphan*/  output_encoding; TYPE_1__ date_mode; int /*<<< orphan*/  abbrev; int /*<<< orphan*/  fmt; int /*<<< orphan*/  member_0; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMIT_FMT_USERFORMAT ; 
 int /*<<< orphan*/  DATE_NORMAL ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,char const*,struct strbuf*,struct pretty_print_context*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct shortlog*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pretty_print_context*,struct commit*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

void FUNC5(struct shortlog *log, struct commit *commit)
{
	struct strbuf author = STRBUF_INIT;
	struct strbuf oneline = STRBUF_INIT;
	struct pretty_print_context ctx = {0};
	const char *fmt;

	ctx.fmt = CMIT_FMT_USERFORMAT;
	ctx.abbrev = log->abbrev;
	ctx.print_email_subject = 1;
	ctx.date_mode.type = DATE_NORMAL;
	ctx.output_encoding = FUNC1();

	fmt = log->committer ?
		(log->email ? "%cN <%cE>" : "%cN") :
		(log->email ? "%aN <%aE>" : "%aN");

	FUNC0(commit, fmt, &author, &ctx);
	if (!log->summary) {
		if (log->user_format)
			FUNC3(&ctx, commit, &oneline);
		else
			FUNC0(commit, "%s", &oneline, &ctx);
	}

	FUNC2(log, author.buf, oneline.len ? oneline.buf : "<none>");

	FUNC4(&author);
	FUNC4(&oneline);
}