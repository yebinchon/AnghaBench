#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char const* buf; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int hexsz; } ;

/* Variables and functions */
 int FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t,char*,struct object_id*) ; 
 char* FUNC3 (char const*,char,int) ; 
 scalar_t__ FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*) ; 
 char* FUNC8 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,size_t) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static int FUNC10(const char *src, size_t len,
			     struct strbuf *buf, int ident)
{
	struct object_id oid;
	char *to_free = NULL, *dollar, *spc;
	int cnt;

	if (!ident)
		return 0;

	cnt = FUNC0(src, len);
	if (!cnt)
		return 0;

	/* are we "faking" in place editing ? */
	if (src == buf->buf)
		to_free = FUNC8(buf, NULL);
	FUNC2(src, len, "blob", &oid);

	FUNC9(buf, len + cnt * (the_hash_algo->hexsz + 3));
	for (;;) {
		/* step 1: run to the next '$' */
		dollar = FUNC3(src, '$', len);
		if (!dollar)
			break;
		FUNC6(buf, src, dollar + 1 - src);
		len -= dollar + 1 - src;
		src  = dollar + 1;

		/* step 2: does it looks like a bit like Id:xxx$ or Id$ ? */
		if (len < 3 || FUNC4("Id", src, 2))
			continue;

		/* step 3: skip over Id$ or Id:xxxxx$ */
		if (src[2] == '$') {
			src += 3;
			len -= 3;
		} else if (src[2] == ':') {
			/*
			 * It's possible that an expanded Id has crept its way into the
			 * repository, we cope with that by stripping the expansion out.
			 * This is probably not a good idea, since it will cause changes
			 * on checkout, which won't go away by stash, but let's keep it
			 * for git-style ids.
			 */
			dollar = FUNC3(src + 3, '$', len - 3);
			if (!dollar) {
				/* incomplete keyword, no more '$', so just quit the loop */
				break;
			}

			if (FUNC3(src + 3, '\n', dollar - src - 3)) {
				/* Line break before the next dollar. */
				continue;
			}

			spc = FUNC3(src + 4, ' ', dollar - src - 4);
			if (spc && spc < dollar-1) {
				/* There are spaces in unexpected places.
				 * This is probably an id from some other
				 * versioning system. Keep it for now.
				 */
				continue;
			}

			len -= dollar + 1 - src;
			src  = dollar + 1;
		} else {
			/* it wasn't a "Id$" or "Id:xxxx$" */
			continue;
		}

		/* step 4: substitute */
		FUNC7(buf, "Id: ");
		FUNC7(buf, FUNC5(&oid));
		FUNC7(buf, " $");
	}
	FUNC6(buf, src, len);

	FUNC1(to_free);
	return 1;
}