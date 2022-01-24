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
struct strbuf {char* buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; } ;
struct rev_info {TYPE_1__ diffopt; int /*<<< orphan*/  date_mode; int /*<<< orphan*/  commit_format; } ;
struct pretty_print_context {int /*<<< orphan*/  date_mode; int /*<<< orphan*/  fmt; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pretty_print_context*,char*,struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static void FUNC4(const char *buf, struct rev_info *rev)
{
	struct strbuf out = STRBUF_INIT;
	struct pretty_print_context pp = {0};

	pp.fmt = rev->commit_format;
	pp.date_mode = rev->date_mode;
	FUNC2(&pp, "Tagger", &out, buf, FUNC1());
	FUNC0(rev->diffopt.file, "%s", out.buf);
	FUNC3(&out);
}