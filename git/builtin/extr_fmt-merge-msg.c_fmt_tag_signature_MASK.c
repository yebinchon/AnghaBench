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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 char* FUNC4 (char const*,char*) ; 

__attribute__((used)) static void FUNC5(struct strbuf *tagbuf,
			      struct strbuf *sig,
			      const char *buf,
			      unsigned long len)
{
	const char *tag_body = FUNC4(buf, "\n\n");
	if (tag_body) {
		tag_body += 2;
		FUNC0(tagbuf, tag_body, buf + len - tag_body);
	}
	FUNC3(tagbuf);
	if (sig->len) {
		FUNC2(tagbuf, '\n');
		FUNC1(tagbuf, sig->buf, sig->len);
	}
}