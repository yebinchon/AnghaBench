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
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  st_mode; } ;
struct dir_iterator {int /*<<< orphan*/  relative_path; TYPE_1__ st; } ;

/* Variables and functions */
 unsigned int DIR_ITERATOR_FOLLOW_SYMLINKS ; 
 unsigned int DIR_ITERATOR_PEDANTIC ; 
 scalar_t__ ENOENT ; 
 int ITER_DONE ; 
 int ITER_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dir_iterator*) ; 
 struct dir_iterator* FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ option_local ; 
 int option_no_hardlinks ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct strbuf *src, struct strbuf *dest,
				   const char *src_repo)
{
	int src_len, dest_len;
	struct dir_iterator *iter;
	int iter_status;
	unsigned int flags;

	FUNC10(dest->buf, 0777);

	flags = DIR_ITERATOR_PEDANTIC | DIR_ITERATOR_FOLLOW_SYMLINKS;
	iter = FUNC7(src->buf, flags);

	if (!iter)
		FUNC5(FUNC1("failed to start iterator over '%s'"), src->buf);

	FUNC12(src, '/');
	src_len = src->len;
	FUNC12(dest, '/');
	dest_len = dest->len;

	while ((iter_status = FUNC6(iter)) == ITER_OK) {
		FUNC14(src, src_len);
		FUNC13(src, iter->relative_path);
		FUNC14(dest, dest_len);
		FUNC13(dest, iter->relative_path);

		if (FUNC0(iter->st.st_mode)) {
			FUNC10(dest->buf, 0777);
			continue;
		}

		/* Files that cannot be copied bit-for-bit... */
		if (!FUNC8(iter->relative_path, "info/alternates")) {
			FUNC2(src, src_repo);
			continue;
		}

		if (FUNC15(dest->buf) && errno != ENOENT)
			FUNC5(FUNC1("failed to unlink '%s'"), dest->buf);
		if (!option_no_hardlinks) {
			if (!FUNC9(FUNC11(src->buf), dest->buf))
				continue;
			if (option_local > 0)
				FUNC5(FUNC1("failed to create link '%s'"), dest->buf);
			option_no_hardlinks = 1;
		}
		if (FUNC3(dest->buf, src->buf, 0666))
			FUNC5(FUNC1("failed to copy file to '%s'"), dest->buf);
	}

	if (iter_status != ITER_DONE) {
		FUNC14(src, src_len);
		FUNC4(FUNC1("failed to iterate over '%s'"), src->buf);
	}
}