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
struct uio {int /*<<< orphan*/  uio_resid; } ;
struct m_ext2fs {scalar_t__ e2fs_bsize; } ;
struct inode {scalar_t__ i_facl; int /*<<< orphan*/  i_number; int /*<<< orphan*/  i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_extattr_entry {int e_name_len; int /*<<< orphan*/  e_name; int /*<<< orphan*/  e_name_index; } ;
struct ext2fs_extattr_dinode_header {scalar_t__ h_magic; } ;
struct ext2fs_dinode {int e2di_extra_isize; } ;
struct buf {scalar_t__ b_data; } ;

/* Variables and functions */
 int E2FS_REV0_INODE_SIZE ; 
 int ENOATTR ; 
 int ENOSPC ; 
 int ENOTSUP ; 
 struct ext2fs_extattr_entry* FUNC0 (struct ext2fs_extattr_entry*) ; 
 struct ext2fs_extattr_entry* FUNC1 (struct ext2fs_extattr_dinode_header*) ; 
 int FUNC2 (struct m_ext2fs*) ; 
 int /*<<< orphan*/  FUNC3 (struct ext2fs_extattr_entry*) ; 
 scalar_t__ EXTATTR_MAGIC ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int FUNC6 (struct buf*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,int,char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC9 (struct ext2fs_extattr_entry*,char*) ; 
 size_t FUNC10 (struct ext2fs_extattr_entry*,struct ext2fs_extattr_entry*,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct ext2fs_extattr_entry*,struct ext2fs_extattr_entry*,char*,struct uio*) ; 
 int /*<<< orphan*/  FUNC13 (char*,struct ext2fs_extattr_entry*,char const*,int,char*,struct uio*) ; 
 int /*<<< orphan*/  FUNC14 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC17 (char const*) ; 
 scalar_t__ FUNC18 (char const*,char const*,int) ; 

int
FUNC19(struct inode *ip, int attrnamespace,
    const char *name, struct uio *uio)
{
	struct m_ext2fs *fs;
	struct buf *bp;
	struct ext2fs_extattr_dinode_header *header;
	struct ext2fs_extattr_entry *entry;
	const char *attr_name;
	int name_len;
	size_t size = 0, max_size;
	int error;

	fs = ip->i_e2fs;

	if ((error = FUNC4(ip->i_devvp,
	    FUNC14(fs, FUNC15(fs, ip->i_number)),
	    (int)fs->e2fs_bsize, NOCRED, &bp)) != 0) {
		FUNC5(bp);
		return (error);
	}

	struct ext2fs_dinode *dinode = (struct ext2fs_dinode *)
	    ((char *)bp->b_data +
	    FUNC2(fs) * FUNC16(fs, ip->i_number));

	/* Check attributes magic value */
	header = (struct ext2fs_extattr_dinode_header *)((char *)dinode +
	    E2FS_REV0_INODE_SIZE + dinode->e2di_extra_isize);

	if (header->h_magic != EXTATTR_MAGIC) {
		FUNC5(bp);
		return (ENOSPC);
	}

	error = FUNC9(FUNC1(header), (char *)dinode +
	    FUNC2(fs));
	if (error) {
		FUNC5(bp);
		return (error);
	}

	/* Find if entry exist */
	for (entry = FUNC1(header); !FUNC3(entry);
	    entry = FUNC0(entry)) {
		if (FUNC7(entry->e_name_index) !=
		    attrnamespace)
			continue;

		name_len = entry->e_name_len;
		attr_name = FUNC11(entry->e_name_index,
		    entry->e_name, &name_len);
		if (!attr_name) {
			FUNC5(bp);
			return (ENOTSUP);
		}

		if (FUNC17(name) == name_len &&
		    0 == FUNC18(attr_name, name, name_len))
			break;
	}

	max_size = FUNC2(fs) - E2FS_REV0_INODE_SIZE -
	    dinode->e2di_extra_isize;

	if (!FUNC3(entry)) {
		size = FUNC10(FUNC1(header), entry,
		    sizeof(struct ext2fs_extattr_dinode_header),
		    entry->e_name_len, uio->uio_resid);
		if (size > max_size) {
			FUNC5(bp);
			return (ENOSPC);
		}

		FUNC12((char *)FUNC1(header),
		    FUNC1(header), entry, (char *)header + max_size, uio);
	} else {
		/* Ensure that the same entry does not exist in the block */
		if (ip->i_facl) {
			error = FUNC8(ip, attrnamespace, name,
			    NULL, &size);
			if (error != ENOATTR || size > 0) {
				FUNC5(bp);
				if (size > 0)
					error = ENOSPC;

				return (error);
			}
		}

		size = FUNC10(FUNC1(header), NULL,
		    sizeof(struct ext2fs_extattr_dinode_header),
		    entry->e_name_len, uio->uio_resid);
		if (size > max_size) {
			FUNC5(bp);
			return (ENOSPC);
		}

		FUNC13((char *)FUNC1(header),
		    FUNC1(header), name, attrnamespace,
		    (char *)header + max_size, uio);
	}

	return (FUNC6(bp));
}