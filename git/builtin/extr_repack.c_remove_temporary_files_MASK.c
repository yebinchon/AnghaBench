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
struct strbuf {size_t len; scalar_t__ buf; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  packdir ; 
 int /*<<< orphan*/  packtmp ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(void)
{
	struct strbuf buf = STRBUF_INIT;
	size_t dirlen, prefixlen;
	DIR *dir;
	struct dirent *e;

	dir = FUNC1(packdir);
	if (!dir)
		return;

	/* Point at the slash at the end of ".../objects/pack/" */
	dirlen = FUNC6(packdir) + 1;
	FUNC3(&buf, packtmp);
	/* Hold the length of  ".tmp-%d-pack-" */
	prefixlen = buf.len - dirlen;

	while ((e = FUNC2(dir))) {
		if (FUNC7(e->d_name, buf.buf + dirlen, prefixlen))
			continue;
		FUNC5(&buf, dirlen);
		FUNC3(&buf, e->d_name);
		FUNC8(buf.buf);
	}
	FUNC0(dir);
	FUNC4(&buf);
}