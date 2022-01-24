#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; } ;
struct shortlog {int wrap_lines; int in1; int in2; int /*<<< orphan*/  file; int /*<<< orphan*/  wrap; } ;
struct TYPE_4__ {int /*<<< orphan*/  file; int /*<<< orphan*/  use_color; } ;
struct rev_info {int /*<<< orphan*/  creation_factor; int /*<<< orphan*/  rdiff2; scalar_t__ rdiff1; int /*<<< orphan*/  rdiff_title; TYPE_2__ diffopt; int /*<<< orphan*/  idiff_title; scalar_t__ idiff_oid1; scalar_t__ numbered_files; int /*<<< orphan*/  commit_format; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct pretty_print_context {int print_email_subject; struct rev_info* rev; TYPE_1__ date_mode; int /*<<< orphan*/  fmt; int /*<<< orphan*/  after_subject; int /*<<< orphan*/  member_0; } ;
struct diff_options {int /*<<< orphan*/  use_color; int /*<<< orphan*/  file; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMIT_FMT_EMAIL ; 
 int /*<<< orphan*/  DATE_RFC2822 ; 
 int /*<<< orphan*/  MAIL_DEFAULT_WRAP ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC4 (struct diff_options*) ; 
 char* FUNC5 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (struct commit*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct rev_info*,struct commit*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*,struct rev_info*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pretty_print_context*,int /*<<< orphan*/ *,struct strbuf*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct pretty_print_context*,char const*,struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct shortlog*,struct commit*) ; 
 int /*<<< orphan*/  FUNC16 (struct shortlog*) ; 
 int /*<<< orphan*/  FUNC17 (struct shortlog*) ; 
 int /*<<< orphan*/  FUNC18 (struct rev_info*,struct commit*,struct commit*) ; 
 int /*<<< orphan*/  FUNC19 (struct rev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC21 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC22 (struct commit*,char const*) ; 

__attribute__((used)) static void FUNC23(struct rev_info *rev, int use_stdout,
			      struct commit *origin,
			      int nr, struct commit **list,
			      const char *branch_name,
			      int quiet)
{
	const char *committer;
	struct shortlog log;
	struct strbuf sb = STRBUF_INIT;
	int i;
	const char *encoding = "UTF-8";
	int need_8bit_cte = 0;
	struct pretty_print_context pp = {0};
	struct commit *head = list[0];

	if (!FUNC1(rev->commit_format))
		FUNC2(FUNC0("cover letter needs email format"));

	committer = FUNC9(0);

	if (!use_stdout &&
	    FUNC12(NULL, rev->numbered_files ? NULL : "cover-letter", rev, quiet))
		FUNC2(FUNC0("failed to create cover-letter file"));

	FUNC11(rev, head, &pp.after_subject, &need_8bit_cte, 0);

	for (i = 0; !need_8bit_cte && i < nr; i++) {
		const char *buf = FUNC8(list[i], NULL);
		if (FUNC10(buf))
			need_8bit_cte = 1;
		FUNC22(list[i], buf);
	}

	if (!branch_name)
		branch_name = FUNC5(rev);

	pp.fmt = CMIT_FMT_EMAIL;
	pp.date_mode.type = DATE_RFC2822;
	pp.rev = rev;
	pp.print_email_subject = 1;
	FUNC13(&pp, NULL, &sb, committer, encoding);
	FUNC14(&pp, branch_name, &sb, encoding, need_8bit_cte);
	FUNC6(rev->diffopt.file, "%s\n", sb.buf);

	FUNC21(&sb);

	FUNC16(&log);
	log.wrap_lines = 1;
	log.wrap = MAIL_DEFAULT_WRAP;
	log.in1 = 2;
	log.in2 = 4;
	log.file = rev->diffopt.file;
	for (i = 0; i < nr; i++)
		FUNC15(&log, list[i]);

	FUNC17(&log);

	/* We can only do diffstat with a unique reference point */
	if (origin)
		FUNC18(rev, origin, head);

	if (rev->idiff_oid1) {
		FUNC7(rev->diffopt.file, "%s", rev->idiff_title);
		FUNC19(rev, 0);
	}

	if (rev->rdiff1) {
		/*
		 * Pass minimum required diff-options to range-diff; others
		 * can be added later if deemed desirable.
		 */
		struct diff_options opts;
		FUNC3(&opts);
		opts.file = rev->diffopt.file;
		opts.use_color = rev->diffopt.use_color;
		FUNC4(&opts);
		FUNC7(rev->diffopt.file, "%s", rev->rdiff_title);
		FUNC20(rev->rdiff1, rev->rdiff2,
				rev->creation_factor, 1, &opts);
	}
}