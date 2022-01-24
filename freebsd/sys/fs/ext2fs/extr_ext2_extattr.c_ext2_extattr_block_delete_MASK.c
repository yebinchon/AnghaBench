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
struct m_ext2fs {int /*<<< orphan*/  e2fs_bsize; } ;
struct inode {int /*<<< orphan*/  i_vnode; int /*<<< orphan*/  i_facl; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_extattr_header {scalar_t__ h_magic; int h_blocks; int h_refcount; } ;
struct ext2fs_extattr_entry {int e_name_len; int /*<<< orphan*/  e_name; int /*<<< orphan*/  e_name_index; } ;
struct buf {scalar_t__ b_bufsize; scalar_t__ b_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOATTR ; 
 int ENOTSUP ; 
 struct ext2fs_extattr_entry* FUNC0 (struct ext2fs_extattr_entry*) ; 
 struct ext2fs_extattr_entry* FUNC1 (struct buf*) ; 
 struct ext2fs_extattr_header* FUNC2 (struct buf*) ; 
 scalar_t__ FUNC3 (struct ext2fs_extattr_entry*) ; 
 scalar_t__ EXTATTR_MAGIC ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,struct buf*) ; 
 int FUNC11 (struct inode*,struct buf**) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,struct ext2fs_extattr_entry*,struct ext2fs_extattr_entry*,scalar_t__) ; 
 char* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC16 (char const*) ; 
 scalar_t__ FUNC17 (char const*,char const*,int) ; 

int
FUNC18(struct inode *ip, int attrnamespace, const char *name)
{
	struct m_ext2fs *fs;
	struct buf *bp;
	struct ext2fs_extattr_header *header;
	struct ext2fs_extattr_entry *entry;
	const char *attr_name;
	int name_len;
	int error;

	fs = ip->i_e2fs;

	error = FUNC4(ip->i_devvp, FUNC15(fs, ip->i_facl),
	    fs->e2fs_bsize, NOCRED, &bp);
	if (error) {
		return (error);
	}

	/* Check attributes magic value */
	header = FUNC2(bp);
	if (header->h_magic != EXTATTR_MAGIC || header->h_blocks != 1) {
		FUNC5(bp);
		return (EINVAL);
	}

	error = FUNC10(ip, bp);
	if (error) {
		FUNC5(bp);
		return (error);
	}

	if (header->h_refcount > 1) {
		error = FUNC11(ip, &bp);
		if (error) {
			FUNC5(bp);
			return (error);
		}
	}

	/* If I am last entry, clean me and free the block */
	entry = FUNC1(bp);
	if (FUNC3(FUNC0(entry)) &&
	    (FUNC9(entry->e_name_index) ==
	    attrnamespace)) {

		name_len = entry->e_name_len;
		attr_name = FUNC13(entry->e_name_index,
		    entry->e_name, &name_len);
		if (!attr_name) {
			FUNC5(bp);
			return (ENOTSUP);
		}

		if (FUNC16(name) == name_len &&
		    0 == FUNC17(attr_name, name, name_len)) {
			ip->i_blocks -= FUNC6(fs->e2fs_bsize);
			FUNC8(ip, ip->i_facl, fs->e2fs_bsize);
			ip->i_facl = 0;
			error = FUNC14(ip->i_vnode, 1);

			FUNC5(bp);
			return (error);
		}
	}

	for (entry = FUNC1(bp); !FUNC3(entry);
	    entry = FUNC0(entry)) {
		if (FUNC9(entry->e_name_index) !=
		    attrnamespace)
			continue;

		name_len = entry->e_name_len;
		attr_name = FUNC13(entry->e_name_index,
		    entry->e_name, &name_len);
		if (!attr_name) {
			FUNC5(bp);
			return (ENOTSUP);
		}

		if (FUNC16(name) == name_len &&
		    0 == FUNC17(attr_name, name, name_len)) {
			FUNC12(bp->b_data,
			    FUNC1(bp), entry,
			    bp->b_data + bp->b_bufsize);

			return (FUNC7(bp));
		}
	}

	FUNC5(bp);

	return (ENOATTR);
}