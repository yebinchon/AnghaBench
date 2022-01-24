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
struct color {scalar_t__ member_0; scalar_t__ type; } ;

/* Variables and functions */
 int COLOR_MAXLEN ; 
 scalar_t__ COLOR_UNSPECIFIED ; 
 int /*<<< orphan*/  GIT_COLOR_RESET ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct color*) ; 
 char* FUNC3 (char*,int,struct color*,char) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC5 (char const) ; 
 int FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct color*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,...) ; 

int FUNC10(const char *value, int value_len, char *dst)
{
	const char *ptr = value;
	int len = value_len;
	char *end = dst + COLOR_MAXLEN;
	unsigned int attr = 0;
	struct color fg = { COLOR_UNSPECIFIED };
	struct color bg = { COLOR_UNSPECIFIED };

	while (len > 0 && FUNC5(*ptr)) {
		ptr++;
		len--;
	}

	if (!len) {
		dst[0] = '\0';
		return 0;
	}

	if (!FUNC8(ptr, "reset", len)) {
		FUNC9(dst, end - dst, GIT_COLOR_RESET);
		return 0;
	}

	/* [fg [bg]] [attr]... */
	while (len > 0) {
		const char *word = ptr;
		struct color c = { COLOR_UNSPECIFIED };
		int val, wordlen = 0;

		while (len > 0 && !FUNC5(word[wordlen])) {
			wordlen++;
			len--;
		}

		ptr = word + wordlen;
		while (len > 0 && FUNC5(*ptr)) {
			ptr++;
			len--;
		}

		if (!FUNC7(&c, word, wordlen)) {
			if (fg.type == COLOR_UNSPECIFIED) {
				fg = c;
				continue;
			}
			if (bg.type == COLOR_UNSPECIFIED) {
				bg = c;
				continue;
			}
			goto bad;
		}
		val = FUNC6(word, wordlen);
		if (0 <= val)
			attr |= (1 << val);
		else
			goto bad;
	}

#undef OUT
#define OUT(x) do { \
	if (dst == end) \
		BUG("color parsing ran out of space"); \
	*dst++ = (x); \
} while(0)

	if (attr || !FUNC2(&fg) || !FUNC2(&bg)) {
		int sep = 0;
		int i;

		OUT('\033');
		OUT('[');

		for (i = 0; attr; i++) {
			unsigned bit = (1 << i);
			if (!(attr & bit))
				continue;
			attr &= ~bit;
			if (sep++)
				OUT(';');
			dst += FUNC9(dst, end - dst, "%d", i);
		}
		if (!FUNC2(&fg)) {
			if (sep++)
				OUT(';');
			/* foreground colors are all in the 3x range */
			dst = FUNC3(dst, end - dst, &fg, '3');
		}
		if (!FUNC2(&bg)) {
			if (sep++)
				OUT(';');
			/* background colors are all in the 4x range */
			dst = FUNC3(dst, end - dst, &bg, '4');
		}
		OUT('m');
	}
	OUT(0);
	return 0;
bad:
	return FUNC4(FUNC1("invalid color value: %.*s"), value_len, value);
#undef OUT
}