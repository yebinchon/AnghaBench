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
typedef  char* uintmax_t ;
struct tuple_list {scalar_t__ offs; int flags; struct tuple* tuples; struct tuple_list* next; } ;
struct tuple_info {unsigned char length; } ;
struct tuple {unsigned char code; unsigned char length; unsigned char* data; struct tuple* next; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 unsigned char CIS_END ; 
 unsigned char CIS_NULL ; 
 unsigned char LENGTH_ANY ; 
 int MDF_ATTR ; 
 int /*<<< orphan*/  PIOCRWFLAG ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct tuple_info* FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 unsigned char FUNC7 (int,unsigned char*,unsigned char) ; 
 struct tuple_list* tlist ; 
 char* FUNC8 (unsigned char) ; 
 void* FUNC9 (unsigned char) ; 

__attribute__((used)) static struct tuple_list *
FUNC10(int fd, int flags, off_t offs)
{
	struct tuple *tp, *last_tp = 0;
	struct tuple_list *tl;
	struct tuple_info *tinfo;
	int     total = 0;
	unsigned char code, length;

	/* Check to see if this memory has already been scanned. */
	for (tl = tlist; tl; tl = tl->next)
		if (tl->offs == offs && tl->flags == (flags & MDF_ATTR))
			return (0);
	tl = FUNC9(sizeof(*tl));
	tl->offs = offs;
	tl->flags = flags & MDF_ATTR;
	if (FUNC4(fd, PIOCRWFLAG, &flags) < 0)
		FUNC1(1, "Setting flag to rad %s memory failed",
		    flags ? "attribute" : "common");
	if (FUNC5(fd, offs, SEEK_SET) < 0)
		FUNC1(1, "Unable to seek to memory offset %ju",
		    (uintmax_t)offs);
	do {
		if (FUNC7(fd, &code, 1) != 1)
			FUNC2(1, "CIS code read");
		total++;
		if (code == CIS_NULL)
			continue;
		tp = FUNC9(sizeof(*tp));
		tp->code = code;
		if (code == CIS_END)
			length = 0;
		else {
			if (FUNC7(fd, &length, 1) != 1)
				FUNC2(1, "CIS len read");
			total++;
		}
#ifdef	DEBUG
		printf("Tuple code = 0x%x, len = %d\n", code, length);
#endif

		/*
		 * A length of 255 is invalid, all others are valid. Treat a
		 * length of 255 as the end of the list. Some cards don't have a
		 * CIS_END at the end. These work on other systems because the
		 * end of the CIS eventually sees an area that's not decoded and
		 * read back as 0xff.
		 */
		if (length == 0xFF) {
			length = 0;
			code = CIS_END;
		}
		FUNC0(length < 0xff);

		/*
		 * Check the tuple, and ignore it if it isn't in the table
		 * or the length is illegal.
		 */
		tinfo = FUNC3(code);
		if (tinfo == NULL || (tinfo->length != LENGTH_ANY && tinfo->length > length)) {
			FUNC6("code %s (%d) ignored\n", FUNC8(code), code);
			continue;
		}
		tp->length = length;
		if (length != 0) {
			total += length;
			tp->data = FUNC9(length);
			if (FUNC7(fd, tp->data, length) != length)
				FUNC2(1, "Can't read CIS data");
		}

		if (last_tp != NULL)
			last_tp->next = tp;
		if (tl->tuples == NULL) {
			tl->tuples = tp;
			tp->next = NULL;
		}
		last_tp = tp;
	} while (code != CIS_END && total < 1024);
	return (tl);
}