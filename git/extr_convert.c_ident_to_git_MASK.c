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
struct strbuf {size_t len; char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,size_t) ; 
 char* FUNC1 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 size_t FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int) ; 

__attribute__((used)) static int FUNC8(const char *src, size_t len,
			struct strbuf *buf, int ident)
{
	char *dst, *dollar;

	if (!ident || (src && !FUNC0(src, len)))
		return 0;

	if (!buf)
		return 1;

	/* only grow if not in place */
	if (FUNC5(buf) + buf->len < len)
		FUNC6(buf, len - buf->len);
	dst = buf->buf;
	for (;;) {
		dollar = FUNC1(src, '$', len);
		if (!dollar)
			break;
		FUNC4(dst, src, dollar + 1 - src);
		dst += dollar + 1 - src;
		len -= dollar + 1 - src;
		src  = dollar + 1;

		if (len > 3 && !FUNC2(src, "Id:", 3)) {
			dollar = FUNC1(src + 3, '$', len - 3);
			if (!dollar)
				break;
			if (FUNC1(src + 3, '\n', dollar - src - 3)) {
				/* Line break before the next dollar. */
				continue;
			}

			FUNC3(dst, "Id$", 3);
			dst += 3;
			len -= dollar + 1 - src;
			src  = dollar + 1;
		}
	}
	FUNC4(dst, src, len);
	FUNC7(buf, dst + len - buf->buf);
	return 1;
}