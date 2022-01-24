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
struct strbuf {int dummy; } ;
struct ident_split {scalar_t__ tz_end; scalar_t__ date_begin; scalar_t__ mail_end; scalar_t__ mail_begin; scalar_t__ name_end; scalar_t__ name_begin; scalar_t__ tz_begin; scalar_t__ date_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDENT_STRICT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  WANT_AUTHOR_IDENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ident_split*,struct strbuf*) ; 
 scalar_t__ author_message ; 
 int /*<<< orphan*/  author_message_buffer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__,char) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char const* force_author ; 
 scalar_t__ force_date ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (scalar_t__,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct ident_split*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,int /*<<< orphan*/ *) ; 
 size_t FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct strbuf *author_ident)
{
	char *name, *email, *date;
	struct ident_split author;

	name = FUNC17(FUNC7("GIT_AUTHOR_NAME"));
	email = FUNC17(FUNC7("GIT_AUTHOR_EMAIL"));
	date = FUNC17(FUNC7("GIT_AUTHOR_DATE"));

	if (author_message) {
		struct ident_split ident;
		size_t len;
		const char *a;

		a = FUNC4(author_message_buffer, "author", &len);
		if (!a)
			FUNC2(FUNC0("commit '%s' lacks author header"), author_message);
		if (FUNC10(&ident, a, len) < 0)
			FUNC2(FUNC0("commit '%s' has malformed author line"), author_message);

		FUNC9(&name, FUNC16(ident.name_begin, ident.name_end - ident.name_begin));
		FUNC9(&email, FUNC16(ident.mail_begin, ident.mail_end - ident.mail_begin));

		if (ident.date_begin) {
			struct strbuf date_buf = STRBUF_INIT;
			FUNC12(&date_buf, '@');
			FUNC11(&date_buf, ident.date_begin, ident.date_end - ident.date_begin);
			FUNC12(&date_buf, ' ');
			FUNC11(&date_buf, ident.tz_begin, ident.tz_end - ident.tz_begin);
			FUNC9(&date, FUNC14(&date_buf, NULL));
		}
	}

	if (force_author) {
		struct ident_split ident;

		if (FUNC10(&ident, force_author, FUNC15(force_author)) < 0)
			FUNC2(FUNC0("malformed --author parameter"));
		FUNC9(&name, FUNC16(ident.name_begin, ident.name_end - ident.name_begin));
		FUNC9(&email, FUNC16(ident.mail_begin, ident.mail_end - ident.mail_begin));
	}

	if (force_date) {
		struct strbuf date_buf = STRBUF_INIT;
		if (FUNC8(force_date, &date_buf))
			FUNC2(FUNC0("invalid date format: %s"), force_date);
		FUNC9(&date, FUNC14(&date_buf, NULL));
	}

	FUNC13(author_ident, FUNC5(name, email, WANT_AUTHOR_IDENT, date,
				IDENT_STRICT));
	FUNC1(&author, author_ident);
	FUNC3("GIT_AUTHOR_NAME", author.name_begin, author.name_end, 0);
	FUNC3("GIT_AUTHOR_EMAIL", author.mail_begin, author.mail_end, 0);
	FUNC3("GIT_AUTHOR_DATE", author.date_begin, author.tz_end, '@');
	FUNC6(name);
	FUNC6(email);
	FUNC6(date);
}