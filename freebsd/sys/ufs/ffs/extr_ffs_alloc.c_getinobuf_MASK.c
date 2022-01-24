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
typedef  scalar_t__ u_int32_t ;
typedef  int u_int ;
struct inode {int dummy; } ;
struct fs {int fs_ipg; scalar_t__ fs_bsize; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct fs* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct fs*,int /*<<< orphan*/ ) ; 
 struct buf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fs*,scalar_t__) ; 

__attribute__((used)) static inline struct buf *
FUNC5(struct inode *ip, u_int cg, u_int32_t cginoblk, int gbflags)
{
	struct fs *fs;

	fs = FUNC1(ip);
	return (FUNC3(FUNC0(ip), FUNC2(fs, FUNC4(fs,
	    cg * fs->fs_ipg + cginoblk)), (int)fs->fs_bsize, 0, 0,
	    gbflags));
}