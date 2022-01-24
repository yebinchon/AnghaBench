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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int type; char* s; unsigned int len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  AP_FILE 129 
#define  AP_STRING 128 
 scalar_t__ EIO ; 
 TYPE_1__* appends ; 
 unsigned int appendx ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 unsigned int FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outfile ; 
 int /*<<< orphan*/  outfname ; 
 unsigned int sdone ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7(void)
{
	FILE *f;
	unsigned int count, idx;
	char buf[8 * 1024];

	for (idx = 0; idx < appendx; idx++)
		switch (appends[idx].type) {
		case AP_STRING:
			FUNC5(appends[idx].s, sizeof(char), appends[idx].len,
			    outfile);
			break;
		case AP_FILE:
			/*
			 * Read files probably shouldn't be cached.  Since
			 * it's not an error to read a non-existent file,
			 * it's possible that another program is interacting
			 * with the sed script through the filesystem.  It
			 * would be truly bizarre, but possible.  It's probably
			 * not that big a performance win, anyhow.
			 */
			if ((f = FUNC3(appends[idx].s, "r")) == NULL)
				break;
			while ((count = FUNC4(buf, sizeof(char), sizeof(buf), f)))
				(void)FUNC5(buf, sizeof(char), count, outfile);
			(void)FUNC1(f);
			break;
		}
	if (FUNC2(outfile))
		FUNC0(1, "%s: %s", outfname, FUNC6(errno ? errno : EIO));
	appendx = sdone = 0;
}