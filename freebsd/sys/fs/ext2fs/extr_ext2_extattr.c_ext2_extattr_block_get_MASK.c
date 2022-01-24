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
struct m_ext2fs {int /*<<< orphan*/  e2fs_bsize; } ;
struct inode {int /*<<< orphan*/  i_facl; int /*<<< orphan*/  i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_extattr_header {scalar_t__ h_magic; int h_blocks; } ;
struct ext2fs_extattr_entry {int e_name_len; size_t e_value_size; scalar_t__ e_value_offs; int /*<<< orphan*/  e_name; int /*<<< orphan*/  e_name_index; } ;
struct buf {scalar_t__ b_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOATTR ; 
 int ENOTSUP ; 
 struct ext2fs_extattr_entry* FUNC0 (struct ext2fs_extattr_entry*) ; 
 struct ext2fs_extattr_entry* FUNC1 (struct buf*) ; 
 struct ext2fs_extattr_header* FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ext2fs_extattr_entry*) ; 
 scalar_t__ EXTATTR_MAGIC ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,struct buf*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*,char const*,int) ; 
 int FUNC12 (scalar_t__,size_t,struct uio*) ; 

int
FUNC13(struct inode *ip, int attrnamespace,
    const char *name, struct uio *uio, size_t *size)
{
	struct m_ext2fs *fs;
	struct buf *bp;
	struct ext2fs_extattr_header *header;
	struct ext2fs_extattr_entry *entry;
	const char *attr_name;
	int name_len;
	int error;

	fs = ip->i_e2fs;

	error = FUNC4(ip->i_devvp, FUNC9(fs, ip->i_facl),
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

	error = FUNC7(ip, bp);
	if (error) {
		FUNC5(bp);
		return (error);
	}

	for (entry = FUNC1(bp); !FUNC3(entry);
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

		if (FUNC10(name) == name_len &&
		    0 == FUNC11(attr_name, name, name_len)) {
			if (size != NULL)
				*size += entry->e_value_size;

			if (uio != NULL)
				error = FUNC12(bp->b_data + entry->e_value_offs,
				    entry->e_value_size, uio);

			FUNC5(bp);
			return (error);
		}
	 }

	FUNC5(bp);

	return (ENOATTR);
}