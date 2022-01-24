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
typedef  struct strbuf {char* buf; int len; } const strbuf ;
struct ident_split {char const* date_begin; size_t mail_end; size_t name_begin; char const* tz_end; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct strbuf const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*) ; 
#define  STRBUF_INIT 128 
 int /*<<< orphan*/  anonymize_ident ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,size_t*) ; 
 int /*<<< orphan*/  idents ; 
 int /*<<< orphan*/  FUNC3 (struct ident_split*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf const*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf const*) ; 
 char* FUNC8 (char const*,char) ; 

__attribute__((used)) static void FUNC9(const char **beg, const char **end)
{
	static struct strbuf buffers[] = { STRBUF_INIT, STRBUF_INIT };
	static unsigned which_buffer;

	struct strbuf *out;
	struct ident_split split;
	const char *end_of_header;

	out = &buffers[which_buffer++];
	which_buffer %= FUNC0(buffers);
	FUNC7(out);

	/* skip "committer", "author", "tagger", etc */
	end_of_header = FUNC8(*beg, ' ');
	if (!end_of_header)
		FUNC1("malformed line fed to anonymize_ident_line: %.*s",
		    (int)(*end - *beg), *beg);
	end_of_header++;
	FUNC4(out, *beg, end_of_header - *beg);

	if (!FUNC3(&split, end_of_header, *end - end_of_header) &&
	    split.date_begin) {
		const char *ident;
		size_t len;

		len = split.mail_end - split.name_begin;
		ident = FUNC2(&idents, anonymize_ident,
				      split.name_begin, &len);
		FUNC4(out, ident, len);
		FUNC5(out, ' ');
		FUNC4(out, split.date_begin, split.tz_end - split.date_begin);
	} else {
		FUNC6(out, "Malformed Ident <malformed@example.com> 0 -0000");
	}

	*beg = out->buf;
	*end = out->buf + out->len;
}