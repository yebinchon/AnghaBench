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
struct image {int nr; char* buf; int len; TYPE_1__* line; int /*<<< orphan*/  line_allocated; } ;
struct TYPE_2__ {int flag; size_t len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int LINE_COMMON ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct image*,char*,size_t,int) ; 
 char* FUNC6 (size_t) ; 

__attribute__((used)) static void FUNC7(struct image *preimage,
				   struct image *postimage,
				   char *buf,
				   size_t len, size_t postlen)
{
	int i, ctx, reduced;
	char *new_buf, *old_buf, *fixed;
	struct image fixed_preimage;

	/*
	 * Update the preimage with whitespace fixes.  Note that we
	 * are not losing preimage->buf -- apply_one_fragment() will
	 * free "oldlines".
	 */
	FUNC5(&fixed_preimage, buf, len, 1);
	FUNC1(postlen
	       ? fixed_preimage.nr == preimage->nr
	       : fixed_preimage.nr <= preimage->nr);
	for (i = 0; i < fixed_preimage.nr; i++)
		fixed_preimage.line[i].flag = preimage->line[i].flag;
	FUNC2(preimage->line_allocated);
	*preimage = fixed_preimage;

	/*
	 * Adjust the common context lines in postimage. This can be
	 * done in-place when we are shrinking it with whitespace
	 * fixing, but needs a new buffer when ignoring whitespace or
	 * expanding leading tabs to spaces.
	 *
	 * We trust the caller to tell us if the update can be done
	 * in place (postlen==0) or not.
	 */
	old_buf = postimage->buf;
	if (postlen)
		new_buf = postimage->buf = FUNC6(postlen);
	else
		new_buf = old_buf;
	fixed = preimage->buf;

	for (i = reduced = ctx = 0; i < postimage->nr; i++) {
		size_t l_len = postimage->line[i].len;
		if (!(postimage->line[i].flag & LINE_COMMON)) {
			/* an added line -- no counterparts in preimage */
			FUNC4(new_buf, old_buf, l_len);
			old_buf += l_len;
			new_buf += l_len;
			continue;
		}

		/* a common context -- skip it in the original postimage */
		old_buf += l_len;

		/* and find the corresponding one in the fixed preimage */
		while (ctx < preimage->nr &&
		       !(preimage->line[ctx].flag & LINE_COMMON)) {
			fixed += preimage->line[ctx].len;
			ctx++;
		}

		/*
		 * preimage is expected to run out, if the caller
		 * fixed addition of trailing blank lines.
		 */
		if (preimage->nr <= ctx) {
			reduced++;
			continue;
		}

		/* and copy it in, while fixing the line length */
		l_len = preimage->line[ctx].len;
		FUNC3(new_buf, fixed, l_len);
		new_buf += l_len;
		fixed += l_len;
		postimage->line[i].len = l_len;
		ctx++;
	}

	if (postlen
	    ? postlen < new_buf - postimage->buf
	    : postimage->len < new_buf - postimage->buf)
		FUNC0("caller miscounted postlen: asked %d, orig = %d, used = %d",
		    (int)postlen, (int) postimage->len, (int)(new_buf - postimage->buf));

	/* Fix the length of the whole thing */
	postimage->len = new_buf - postimage->buf;
	postimage->nr -= reduced;
}