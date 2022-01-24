#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
union dinode {char ffs1_din; char ffs2_din; } ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint32_t ;
struct vnode {int /*<<< orphan*/ * member_1; TYPE_1__* member_0; } ;
struct TYPE_8__ {int /*<<< orphan*/  ffs2_din; int /*<<< orphan*/  ffs1_din; } ;
struct inode {int i_number; int i_size; TYPE_3__ i_din; struct vnode* i_devvp; struct fs* i_fs; } ;
struct fs {int dummy; } ;
struct buf {int /*<<< orphan*/ * b_data; } ;
typedef  int ssize_t ;
typedef  int off_t ;
struct TYPE_6__ {scalar_t__ superblock; TYPE_2__* fs_specific; } ;
typedef  TYPE_1__ fsinfo_t ;
struct TYPE_7__ {int version; int /*<<< orphan*/  bsize; } ;
typedef  TYPE_2__ ffs_opt_t ;

/* Variables and functions */
 int DEBUG_FS_WRITE_FILE ; 
 int DEBUG_FS_WRITE_FILE_BLOCK ; 
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int S_IFMT ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 scalar_t__ FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int debug ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,long long,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct inode*,int,int,struct buf**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  mode ; 
 int FUNC15 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int FUNC17 (int,char*,int) ; 
 int /*<<< orphan*/  size ; 

__attribute__((used)) static void
FUNC18(union dinode *din, uint32_t ino, void *buf, fsinfo_t *fsopts)
{
	int 	isfile, ffd;
	char	*fbuf, *p;
	off_t	bufleft, chunk, offset;
	ssize_t nread;
	struct inode	in;
	struct buf *	bp;
	ffs_opt_t	*ffs_opts = fsopts->fs_specific;
	struct vnode vp = { fsopts, NULL };

	FUNC3 (din != NULL);
	FUNC3 (buf != NULL);
	FUNC3 (fsopts != NULL);
	FUNC3 (ffs_opts != NULL);

	isfile = FUNC2(FUNC0(din, mode));
	fbuf = NULL;
	ffd = -1;
	p = NULL;

	in.i_fs = (struct fs *)fsopts->superblock;
	in.i_devvp = &vp;

	if (debug & DEBUG_FS_WRITE_FILE) {
		FUNC16(
		    "ffs_write_file: ino %u, din %p, isfile %d, %s, size %lld",
		    ino, din, isfile, FUNC13(FUNC0(din, mode) & S_IFMT),
		    (long long)FUNC0(din, size));
		if (isfile)
			FUNC16(", file '%s'\n", (char *)buf);
		else
			FUNC16(", buffer %p\n", buf);
	}

	in.i_number = ino;
	in.i_size = FUNC0(din, size);
	if (ffs_opts->version == 1)
		FUNC14(&in.i_din.ffs1_din, &din->ffs1_din,
		    sizeof(in.i_din.ffs1_din));
	else
		FUNC14(&in.i_din.ffs2_din, &din->ffs2_din,
		    sizeof(in.i_din.ffs2_din));

	if (FUNC0(din, size) == 0)
		goto write_inode_and_leave;		/* mmm, cheating */

	if (isfile) {
		fbuf = FUNC7(ffs_opts->bsize);
		if ((ffd = FUNC15((char *)buf, O_RDONLY, 0444)) == -1) {
			FUNC8(EXIT_FAILURE, "Can't open `%s' for reading", (char *)buf);
		}
	} else {
		p = buf;
	}

	chunk = 0;
	for (bufleft = FUNC0(din, size); bufleft > 0; bufleft -= chunk) {
		chunk = FUNC1(bufleft, ffs_opts->bsize);
		if (!isfile)
			;
		else if ((nread = FUNC17(ffd, fbuf, chunk)) == -1)
			FUNC8(EXIT_FAILURE, "Reading `%s', %lld bytes to go",
			    (char *)buf, (long long)bufleft);
		else if (nread != chunk)
			FUNC9(EXIT_FAILURE, "Reading `%s', %lld bytes to go, "
			    "read %zd bytes, expected %ju bytes, does "
			    "metalog size= attribute mismatch source size?",
			    (char *)buf, (long long)bufleft, nread,
			    (uintmax_t)chunk);
		else
			p = fbuf;
		offset = FUNC0(din, size) - bufleft;
		if (debug & DEBUG_FS_WRITE_FILE_BLOCK)
			FUNC16(
		"ffs_write_file: write %p offset %lld size %lld left %lld\n",
			    p, (long long)offset,
			    (long long)chunk, (long long)bufleft);
	/*
	 * XXX	if holey support is desired, do the check here
	 *
	 * XXX	might need to write out last bit in fragroundup
	 *	sized chunk. however, ffs_balloc() handles this for us
	 */
		errno = FUNC10(&in, offset, chunk, &bp);
 bad_ffs_write_file:
		if (errno != 0)
			FUNC8(1,
			    "Writing inode %d (%s), bytes %lld + %lld",
			    ino,
			    isfile ? (char *)buf :
			      FUNC13(FUNC0(din, mode) & S_IFMT),
			    (long long)offset, (long long)chunk);
		FUNC14(bp->b_data, p, chunk);
		errno = FUNC5(bp);
		if (errno != 0)
			goto bad_ffs_write_file;
		FUNC4(bp);
		if (!isfile)
			p += chunk;
	}
  
 write_inode_and_leave:
	FUNC11(&in.i_din, in.i_number, fsopts);
	if (fbuf)
		FUNC12(fbuf);
	if (ffd != -1)
		FUNC6(ffd);
}