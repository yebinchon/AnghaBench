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
typedef  int /*<<< orphan*/  zfile1 ;
typedef  int /*<<< orphan*/  file1 ;
struct TYPE_2__ {int /*<<< orphan*/  suffix; } ;

/* Variables and functions */
 int COMPRESS_TYPES ; 
 int MAXPATHLEN ; 
 TYPE_1__* compress_type ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const*,char const*,int) ; 
 scalar_t__ noaction ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(const char *archive_dir, const char *namepart, int numlog_c)
{
	char file1[MAXPATHLEN], zfile1[MAXPATHLEN];
	int c;

	FUNC0(file1, sizeof(file1), archive_dir, namepart,
	    numlog_c);

	for (c = 0; c < COMPRESS_TYPES; c++) {
		(void) FUNC2(zfile1, sizeof(zfile1), "%s%s", file1,
		    compress_type[c].suffix);
		if (noaction)
			FUNC1("\trm -f %s\n", zfile1);
		else
			(void) FUNC3(zfile1);
	}
}