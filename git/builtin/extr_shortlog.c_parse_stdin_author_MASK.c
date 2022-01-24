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
struct shortlog {scalar_t__ email; int /*<<< orphan*/  mailmap; } ;
struct ident_split {char* name_begin; char* mail_begin; char* name_end; char* mail_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const**,size_t*,char const**,size_t*) ; 
 scalar_t__ FUNC1 (struct ident_split*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(struct shortlog *log,
			       struct strbuf *out, const char *in)
{
	const char *mailbuf, *namebuf;
	size_t namelen, maillen;
	struct ident_split ident;

	if (FUNC1(&ident, in, FUNC4(in)))
		return -1;

	namebuf = ident.name_begin;
	mailbuf = ident.mail_begin;
	namelen = ident.name_end - ident.name_begin;
	maillen = ident.mail_end - ident.mail_begin;

	FUNC0(&log->mailmap, &mailbuf, &maillen, &namebuf, &namelen);
	FUNC2(out, namebuf, namelen);
	if (log->email)
		FUNC3(out, " <%.*s>", (int)maillen, mailbuf);

	return 0;
}