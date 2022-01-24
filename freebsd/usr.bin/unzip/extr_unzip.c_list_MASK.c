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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ Z1_opt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 char* FUNC2 (struct archive_entry*) ; 
 scalar_t__ FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 struct tm* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,struct tm*) ; 
 int v_opt ; 
 scalar_t__* y_str ; 
 int /*<<< orphan*/  zipinfo_mode ; 

__attribute__((used)) static void
FUNC8(struct archive *a, struct archive_entry *e)
{
	char buf[20];
	time_t mtime;
	struct tm *tm;

	mtime = FUNC1(e);
	tm = FUNC5(&mtime);
	if (*y_str)
		FUNC7(buf, sizeof(buf), "%m-%d-%G %R", tm);
	else
		FUNC7(buf, sizeof(buf), "%m-%d-%g %R", tm);

	if (!zipinfo_mode) {
		if (v_opt == 1) {
			FUNC6(" %8ju  %s   %s\n",
			    (uintmax_t)FUNC3(e),
			    buf, FUNC2(e));
		} else if (v_opt == 2) {
			FUNC6("%8ju  Stored  %7ju   0%%  %s  %08x  %s\n",
			    (uintmax_t)FUNC3(e),
			    (uintmax_t)FUNC3(e),
			    buf,
			    0U,
			    FUNC2(e));
		}
	} else {
		if (Z1_opt)
			FUNC6("%s\n",FUNC2(e));
	}
	FUNC0(FUNC4(a));
}