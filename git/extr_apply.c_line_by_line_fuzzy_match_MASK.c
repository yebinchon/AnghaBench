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
struct strbuf {int dummy; } ;
struct image {size_t len; char* buf; int nr; TYPE_1__* line; } ;
struct TYPE_2__ {size_t len; int flag; } ;

/* Variables and functions */
 int LINE_COMMON ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,size_t) ; 
 char* FUNC3 (struct strbuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct image*,struct image*,char*,size_t,size_t) ; 

__attribute__((used)) static int FUNC6(struct image *img,
				    struct image *preimage,
				    struct image *postimage,
				    unsigned long current,
				    int current_lno,
				    int preimage_limit)
{
	int i;
	size_t imgoff = 0;
	size_t preoff = 0;
	size_t postlen = postimage->len;
	size_t extra_chars;
	char *buf;
	char *preimage_eof;
	char *preimage_end;
	struct strbuf fixed;
	char *fixed_buf;
	size_t fixed_len;

	for (i = 0; i < preimage_limit; i++) {
		size_t prelen = preimage->line[i].len;
		size_t imglen = img->line[current_lno+i].len;

		if (!FUNC0(img->buf + current + imgoff, imglen,
				      preimage->buf + preoff, prelen))
			return 0;
		if (preimage->line[i].flag & LINE_COMMON)
			postlen += imglen - prelen;
		imgoff += imglen;
		preoff += prelen;
	}

	/*
	 * Ok, the preimage matches with whitespace fuzz.
	 *
	 * imgoff now holds the true length of the target that
	 * matches the preimage before the end of the file.
	 *
	 * Count the number of characters in the preimage that fall
	 * beyond the end of the file and make sure that all of them
	 * are whitespace characters. (This can only happen if
	 * we are removing blank lines at the end of the file.)
	 */
	buf = preimage_eof = preimage->buf + preoff;
	for ( ; i < preimage->nr; i++)
		preoff += preimage->line[i].len;
	preimage_end = preimage->buf + preoff;
	for ( ; buf < preimage_end; buf++)
		if (!FUNC1(*buf))
			return 0;

	/*
	 * Update the preimage and the common postimage context
	 * lines to use the same whitespace as the target.
	 * If whitespace is missing in the target (i.e.
	 * if the preimage extends beyond the end of the file),
	 * use the whitespace from the preimage.
	 */
	extra_chars = preimage_end - preimage_eof;
	FUNC4(&fixed, imgoff + extra_chars);
	FUNC2(&fixed, img->buf + current, imgoff);
	FUNC2(&fixed, preimage_eof, extra_chars);
	fixed_buf = FUNC3(&fixed, &fixed_len);
	FUNC5(preimage, postimage,
			       fixed_buf, fixed_len, postlen);
	return 1;
}