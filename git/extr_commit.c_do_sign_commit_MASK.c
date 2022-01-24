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

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 () ; 
 char const* gpg_sig_header ; 
 int gpg_sig_header_len ; 
 scalar_t__ FUNC1 (struct strbuf*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 char* FUNC4 (char const*,char) ; 
 char* FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(struct strbuf *buf, const char *keyid)
{
	struct strbuf sig = STRBUF_INIT;
	int inspos, copypos;
	const char *eoh;

	/* find the end of the header */
	eoh = FUNC5(buf->buf, "\n\n");
	if (!eoh)
		inspos = buf->len;
	else
		inspos = eoh - buf->buf + 1;

	if (!keyid || !*keyid)
		keyid = FUNC0();
	if (FUNC1(buf, &sig, keyid)) {
		FUNC3(&sig);
		return -1;
	}

	for (copypos = 0; sig.buf[copypos]; ) {
		const char *bol = sig.buf + copypos;
		const char *eol = FUNC4(bol, '\n');
		int len = (eol - bol) + !!*eol;

		if (!copypos) {
			FUNC2(buf, inspos, gpg_sig_header, gpg_sig_header_len);
			inspos += gpg_sig_header_len;
		}
		FUNC2(buf, inspos++, " ", 1);
		FUNC2(buf, inspos, bol, len);
		inspos += len;
		copypos += len;
	}
	FUNC3(&sig);
	return 0;
}