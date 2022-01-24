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
struct mtree_fileinfo {scalar_t__ line; int /*<<< orphan*/ * fp; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mtree_fileinfo*,int /*<<< orphan*/ ) ; 
 struct mtree_fileinfo* FUNC1 (int) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtree_fileinfo*) ; 
 int /*<<< orphan*/  mtree_fileinfo ; 
 int /*<<< orphan*/  next ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(const char *name, FILE *fp)
{
	struct mtree_fileinfo *fi;

	fi = FUNC1(sizeof(*fi));
	if (FUNC4(name, "-") == 0)
		fi->name = FUNC2("(stdin)");
	else
		fi->name = FUNC2(name);
	if (fi->name == NULL) {
		FUNC3(fi);
		return (ENOMEM);
	}

	fi->fp = fp;
	fi->line = 0;

	FUNC0(&mtree_fileinfo, fi, next);
	return (0);
}