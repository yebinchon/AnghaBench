#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct direct {int d_namlen; char* d_name; int /*<<< orphan*/  d_type; int /*<<< orphan*/  d_ino; int /*<<< orphan*/  d_reclen; } ;
typedef  scalar_t__ doff_t ;
struct TYPE_3__ {int size; int cur; scalar_t__ buf; } ;
typedef  TYPE_1__ dirbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(dirbuf_t *dbuf, const char *dir, int needswap)
{
	doff_t		i;
	struct direct	*de;
	uint16_t	reclen;

	FUNC1 (dbuf != NULL);
	FUNC1 (dir != NULL);
	FUNC3("ffs_dump_dirbuf: dir %s size %d cur %d\n",
	    dir, dbuf->size, dbuf->cur);

	for (i = 0; i < dbuf->size; ) {
		de = (struct direct *)(dbuf->buf + i);
		reclen = FUNC4(de->d_reclen, needswap);
		FUNC3(
	    " inode %4d %7s offset %4d reclen %3d namlen %3d name %s\n",
		    FUNC5(de->d_ino, needswap),
		    FUNC2(FUNC0(de->d_type)), i, reclen,
		    de->d_namlen, de->d_name);
		i += reclen;
		FUNC1(reclen > 0);
	}
}