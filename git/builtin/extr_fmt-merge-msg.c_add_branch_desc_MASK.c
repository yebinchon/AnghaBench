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
struct strbuf {char* buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static void FUNC5(struct strbuf *out, const char *name)
{
	struct strbuf desc = STRBUF_INIT;

	if (!FUNC0(&desc, name)) {
		const char *bp = desc.buf;
		while (*bp) {
			const char *ep = FUNC4(bp, '\n');
			if (*ep)
				ep++;
			FUNC1(out, "  : %.*s", (int)(ep - bp), bp);
			bp = ep;
		}
		FUNC2(out);
	}
	FUNC3(&desc);
}