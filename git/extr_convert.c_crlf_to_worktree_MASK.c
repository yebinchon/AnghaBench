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
struct text_stat {scalar_t__ lonelf; } ;
struct strbuf {char const* buf; } ;
typedef  enum crlf_action { ____Placeholder_crlf_action } crlf_action ;

/* Variables and functions */
 scalar_t__ EOL_CRLF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t,struct text_stat*) ; 
 char* FUNC2 (char const*,char,size_t) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 char* FUNC6 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct text_stat*,int) ; 

__attribute__((used)) static int FUNC9(const char *src, size_t len,
			    struct strbuf *buf, enum crlf_action crlf_action)
{
	char *to_free = NULL;
	struct text_stat stats;

	if (!len || FUNC3(crlf_action) != EOL_CRLF)
		return 0;

	FUNC1(src, len, &stats);
	if (!FUNC8(&stats, crlf_action))
		return 0;

	/* are we "faking" in place editing ? */
	if (src == buf->buf)
		to_free = FUNC6(buf, NULL);

	FUNC7(buf, len + stats.lonelf);
	for (;;) {
		const char *nl = FUNC2(src, '\n', len);
		if (!nl)
			break;
		if (nl > src && nl[-1] == '\r') {
			FUNC4(buf, src, nl + 1 - src);
		} else {
			FUNC4(buf, src, nl - src);
			FUNC5(buf, "\r\n");
		}
		len -= nl + 1 - src;
		src  = nl + 1;
	}
	FUNC4(buf, src, len);

	FUNC0(to_free);
	return 1;
}