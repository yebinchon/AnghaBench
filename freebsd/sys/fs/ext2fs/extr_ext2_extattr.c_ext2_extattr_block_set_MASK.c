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
typedef  int /*<<< orphan*/  uint32_t ;
struct uio {int /*<<< orphan*/  uio_resid; } ;
struct m_ext2fs {size_t e2fs_bsize; } ;
struct inode {int /*<<< orphan*/  i_vnode; int /*<<< orphan*/  i_facl; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_extattr_header {scalar_t__ h_magic; int h_blocks; int h_refcount; struct ext2fs_extattr_entry* h_reserved; scalar_t__ h_hash; } ;
struct ext2fs_extattr_entry {int e_name_len; int /*<<< orphan*/  e_name; int /*<<< orphan*/  e_name_index; } ;
struct buf {size_t b_bufsize; scalar_t__ b_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOATTR ; 
 int ENOSPC ; 
 int ENOTSUP ; 
 struct ext2fs_extattr_entry* FUNC0 (struct ext2fs_extattr_entry*) ; 
 struct ext2fs_extattr_entry* FUNC1 (struct buf*) ; 
 struct ext2fs_extattr_header* FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ext2fs_extattr_entry*) ; 
 scalar_t__ EXTATTR_MAGIC ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 scalar_t__ FUNC6 (size_t) ; 
 int FUNC7 (struct buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct buf*) ; 
 int FUNC12 (struct inode*,struct buf*) ; 
 int FUNC13 (struct inode*,struct buf**) ; 
 size_t FUNC14 (struct ext2fs_extattr_entry*,struct ext2fs_extattr_entry*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct inode*,int,char const*) ; 
 char* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 char const* FUNC17 (int,char const*) ; 
 int /*<<< orphan*/  FUNC18 (struct ext2fs_extattr_header*,struct ext2fs_extattr_entry*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,struct ext2fs_extattr_entry*,struct ext2fs_extattr_entry*,scalar_t__,struct uio*) ; 
 struct ext2fs_extattr_entry* FUNC20 (scalar_t__,struct ext2fs_extattr_entry*,char const*,int,scalar_t__,struct uio*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 struct buf* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,struct ext2fs_extattr_header*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct ext2fs_extattr_entry*,int /*<<< orphan*/ ,int) ; 
 int FUNC26 (char const*) ; 
 scalar_t__ FUNC27 (char const*,char const*,int) ; 

int
FUNC28(struct inode *ip, int attrnamespace,
    const char *name, struct uio *uio)
{
	struct m_ext2fs *fs;
	struct buf *bp;
	struct ext2fs_extattr_header *header;
	struct ext2fs_extattr_entry *entry;
	const char *attr_name;
	int name_len;
	size_t size;
	int error;

	fs = ip->i_e2fs;

	if (ip->i_facl) {
		error = FUNC4(ip->i_devvp, FUNC22(fs, ip->i_facl),
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

		error = FUNC12(ip, bp);
		if (error) {
			FUNC5(bp);
			return (error);
		}

		if (header->h_refcount > 1) {
			error = FUNC13(ip, &bp);
			if (error) {
				FUNC5(bp);
				return (error);
			}

			header = FUNC2(bp);
		}

		/* Find if entry exist */
		for (entry = FUNC1(bp); !FUNC3(entry);
		    entry = FUNC0(entry)) {
			if (FUNC10(entry->e_name_index) !=
			    attrnamespace)
				continue;

			name_len = entry->e_name_len;
			attr_name = FUNC16(entry->e_name_index,
			    entry->e_name, &name_len);
			if (!attr_name) {
				FUNC5(bp);
				return (ENOTSUP);
			}

			if (FUNC26(name) == name_len &&
			    0 == FUNC27(attr_name, name, name_len))
				break;
		}

		if (!FUNC3(entry)) {
			size = FUNC14(FUNC1(bp), entry,
			    sizeof(struct ext2fs_extattr_header),
			    entry->e_name_len, uio->uio_resid);
			if (size > bp->b_bufsize) {
				FUNC5(bp);
				return (ENOSPC);
			}

			FUNC19(bp->b_data, FUNC1(bp),
			    entry, bp->b_data + bp->b_bufsize, uio);
		} else {
			size = FUNC14(FUNC1(bp), NULL,
			    sizeof(struct ext2fs_extattr_header),
			    FUNC26(name), uio->uio_resid);
			if (size > bp->b_bufsize) {
				FUNC5(bp);
				return (ENOSPC);
			}

			entry = FUNC20(bp->b_data, FUNC1(bp),
			    name, attrnamespace, bp->b_data + bp->b_bufsize, uio);

			/* Clean the same entry in the inode */
			error = FUNC15(ip, attrnamespace, name);
			if (error && error != ENOATTR) {
				FUNC5(bp);
				return (error);
			}
		}

		FUNC18(header, entry);
		FUNC11(ip, bp);

		return (FUNC7(bp));
	}

	size = FUNC14(NULL, NULL,
	    sizeof(struct ext2fs_extattr_header),
	    FUNC26(FUNC17(attrnamespace, name)), uio->uio_resid);
	if (size > fs->e2fs_bsize)
		return (ENOSPC);

	/* Allocate block, fill EA header and insert entry */
	ip->i_facl = FUNC8(ip);
	if (0 == ip->i_facl)
		return (ENOSPC);

	ip->i_blocks += FUNC6(fs->e2fs_bsize);
	FUNC21(ip->i_vnode, 1);

	bp = FUNC23(ip->i_devvp, FUNC22(fs, ip->i_facl), fs->e2fs_bsize, 0, 0, 0);
	if (!bp) {
		FUNC9(ip, ip->i_facl, fs->e2fs_bsize);
		ip->i_blocks -= FUNC6(fs->e2fs_bsize);
		ip->i_facl = 0;
		FUNC21(ip->i_vnode, 1);
		return (EIO);
	}

	header = FUNC2(bp);
	header->h_magic = EXTATTR_MAGIC;
	header->h_refcount = 1;
	header->h_blocks = 1;
	header->h_hash = 0;
	FUNC25(header->h_reserved, 0, sizeof(header->h_reserved));
	FUNC24(bp->b_data, header, sizeof(struct ext2fs_extattr_header));
	FUNC25(FUNC1(bp), 0, sizeof(uint32_t));

	entry = FUNC20(bp->b_data, FUNC1(bp),
	    name, attrnamespace, bp->b_data + bp->b_bufsize, uio);

	/* Clean the same entry in the inode */
	error = FUNC15(ip, attrnamespace, name);
	if (error && error != ENOATTR) {
		FUNC5(bp);
		return (error);
	}

	FUNC18(header, entry);
	FUNC11(ip, bp);

	return (FUNC7(bp));
}