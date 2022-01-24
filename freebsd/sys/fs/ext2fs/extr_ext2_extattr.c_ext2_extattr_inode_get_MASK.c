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
struct uio {int dummy; } ;
struct m_ext2fs {scalar_t__ e2fs_bsize; } ;
struct inode {int /*<<< orphan*/  i_number; int /*<<< orphan*/  i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_extattr_entry {int e_name_len; int e_value_offs; scalar_t__ e_value_size; int /*<<< orphan*/  e_name; int /*<<< orphan*/  e_name_index; } ;
struct ext2fs_extattr_dinode_header {scalar_t__ h_magic; } ;
struct ext2fs_dinode {int e2di_extra_isize; } ;
struct buf {scalar_t__ b_data; } ;

/* Variables and functions */
 int E2FS_REV0_INODE_SIZE ; 
 int ENOATTR ; 
 int ENOTSUP ; 
 struct ext2fs_extattr_entry* FUNC0 (struct ext2fs_extattr_entry*) ; 
 struct ext2fs_extattr_entry* FUNC1 (struct ext2fs_extattr_dinode_header*) ; 
 int FUNC2 (struct m_ext2fs*) ; 
 int /*<<< orphan*/  FUNC3 (struct ext2fs_extattr_entry*) ; 
 scalar_t__ EXTATTR_MAGIC ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ext2fs_extattr_entry*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC12 (char const*) ; 
 scalar_t__ FUNC13 (char const*,char const*,int) ; 
 int FUNC14 (char*,scalar_t__,struct uio*) ; 

int
FUNC15(struct inode *ip, int attrnamespace,
    const char *name, struct uio *uio, size_t *size)
{
	struct m_ext2fs *fs;
	struct buf *bp;
	struct ext2fs_extattr_dinode_header *header;
	struct ext2fs_extattr_entry *entry;
	const char *attr_name;
	int name_len;
	int error;

	fs = ip->i_e2fs;

	if ((error = FUNC4(ip->i_devvp,
	    FUNC9(fs, FUNC10(fs, ip->i_number)),
	    (int)fs->e2fs_bsize, NOCRED, &bp)) != 0) {
		FUNC5(bp);
		return (error);
	}

	struct ext2fs_dinode *dinode = (struct ext2fs_dinode *)
	    ((char *)bp->b_data +
	    FUNC2(fs) * FUNC11(fs, ip->i_number));

	/* Check attributes magic value */
	header = (struct ext2fs_extattr_dinode_header *)((char *)dinode +
	    E2FS_REV0_INODE_SIZE + dinode->e2di_extra_isize);

	if (header->h_magic != EXTATTR_MAGIC) {
		FUNC5(bp);
		return (ENOATTR);
	}

	error = FUNC7(FUNC1(header),
	    (char *)dinode + FUNC2(fs));
	if (error) {
		FUNC5(bp);
		return (error);
	}

	for (entry = FUNC1(header); !FUNC3(entry);
	    entry = FUNC0(entry)) {
		if (FUNC6(entry->e_name_index) !=
		    attrnamespace)
			continue;

		name_len = entry->e_name_len;
		attr_name = FUNC8(entry->e_name_index,
		    entry->e_name, &name_len);
		if (!attr_name) {
			FUNC5(bp);
			return (ENOTSUP);
		}

		if (FUNC12(name) == name_len &&
		    0 == FUNC13(attr_name, name, name_len)) {
			if (size != NULL)
				*size += entry->e_value_size;

			if (uio != NULL)
				error = FUNC14(((char *)FUNC1(header)) +
				    entry->e_value_offs, entry->e_value_size, uio);

			FUNC5(bp);
			return (error);
		}
	 }

	FUNC5(bp);

	return (ENOATTR);
}