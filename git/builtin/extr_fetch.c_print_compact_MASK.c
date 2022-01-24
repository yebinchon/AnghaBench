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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  refcol_width ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 

__attribute__((used)) static void FUNC6(struct strbuf *display,
			  const char *remote, const char *local)
{
	struct strbuf r = STRBUF_INIT;
	struct strbuf l = STRBUF_INIT;

	if (!FUNC5(remote, local)) {
		FUNC2(display, "%-*s -> *", refcol_width, remote);
		return;
	}

	FUNC3(&r, remote);
	FUNC3(&l, local);

	if (!FUNC0(&r, local, "*"))
		FUNC0(&l, remote, "*");
	FUNC1(display, r.buf, l.buf);

	FUNC4(&r);
	FUNC4(&l);
}