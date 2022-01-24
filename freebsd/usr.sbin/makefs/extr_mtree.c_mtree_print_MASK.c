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
typedef  int /*<<< orphan*/  va_list ;
struct mtree_fileinfo {char* name; int line; } ;

/* Variables and functions */
 struct mtree_fileinfo* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  mtree_fileinfo ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(const char *msgtype, const char *fmt, va_list ap)
{
	struct mtree_fileinfo *fi;

	if (msgtype != NULL) {
		fi = FUNC0(&mtree_fileinfo);
		if (fi != NULL)
			FUNC1(stderr, "%s:%u: ", fi->name, fi->line);
		FUNC1(stderr, "%s: ", msgtype);
	}
	FUNC2(stderr, fmt, ap);
}