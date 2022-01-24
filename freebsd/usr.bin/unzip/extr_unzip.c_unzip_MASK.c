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
typedef  int uintmax_t ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 scalar_t__ Z1_opt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 struct archive* FUNC4 () ; 
 int FUNC5 (struct archive*,struct archive_entry**) ; 
 int FUNC6 (struct archive*,char const*,int) ; 
 int FUNC7 (struct archive*) ; 
 scalar_t__ c_opt ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,struct archive_entry*) ; 
 scalar_t__ p_opt ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  q_opt ; 
 scalar_t__ t_opt ; 
 int FUNC14 (struct archive*,struct archive_entry*) ; 
 int v_opt ; 
 char* y_str ; 
 scalar_t__ zipinfo_mode ; 

__attribute__((used)) static void
FUNC15(const char *fn)
{
	struct archive *a;
	struct archive_entry *e;
	int ret;
	uintmax_t total_size, file_count, error_count;

	if ((a = FUNC4()) == NULL)
		FUNC8("archive_read_new failed");

	FUNC0(FUNC7(a));
	FUNC0(FUNC6(a, fn, 8192));

	if (!zipinfo_mode) {
		if (!p_opt && !q_opt)
			FUNC13("Archive:  %s\n", fn);
		if (v_opt == 1) {
			FUNC13("  Length     %sDate   Time    Name\n", y_str);
			FUNC13(" --------    %s----   ----    ----\n", y_str);
		} else if (v_opt == 2) {
			FUNC13(" Length   Method    Size  Ratio   %sDate   Time   CRC-32    Name\n", y_str);
			FUNC13("--------  ------  ------- -----   %s----   ----   ------    ----\n", y_str);
		}
	}

	total_size = 0;
	file_count = 0;
	error_count = 0;
	for (;;) {
		ret = FUNC5(a, &e);
		if (ret == ARCHIVE_EOF)
			break;
		FUNC0(ret);
		if (!zipinfo_mode) {
			if (t_opt)
				error_count += FUNC14(a, e);
			else if (v_opt)
				FUNC12(a, e);
			else if (p_opt || c_opt)
				FUNC11(a, e);
			else
				FUNC10(a, e);
		} else {
			if (Z1_opt)
				FUNC12(a, e);
		}

		total_size += FUNC1(e);
		++file_count;
	}

	if (zipinfo_mode) {
		if (v_opt == 1) {
			FUNC13(" --------                   %s-------\n", y_str);
			FUNC13(" %8ju                   %s%ju file%s\n",
			    total_size, y_str, file_count, file_count != 1 ? "s" : "");
		} else if (v_opt == 2) {
			FUNC13("--------          -------  ---                            %s-------\n", y_str);
			FUNC13("%8ju          %7ju   0%%                            %s%ju file%s\n",
			    total_size, total_size, y_str, file_count,
			    file_count != 1 ? "s" : "");
		}
	}

	FUNC0(FUNC2(a));
	(void)FUNC3(a);

	if (t_opt) {
		if (error_count > 0) {
			FUNC9("%ju checksum error(s) found.", error_count);
		}
		else {
			FUNC13("No errors detected in compressed data of %s.\n",
			       fn);
		}
	}
}