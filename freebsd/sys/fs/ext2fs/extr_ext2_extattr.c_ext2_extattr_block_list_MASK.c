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
struct ext2fs_extattr_entry {int e_name_len; int /*<<< orphan*/  e_name; int /*<<< orphan*/  e_name_index; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 struct ext2fs_extattr_entry* FUNC0 (struct ext2fs_extattr_entry*) ; 
 struct ext2fs_extattr_entry* FUNC1 (struct buf*) ; 
 struct ext2fs_extattr_header* FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ext2fs_extattr_entry*) ; 
 scalar_t__ EXTATTR_MAGIC ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,struct buf*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 int FUNC13 (char*,int,struct uio*) ; 

int
FUNC14(struct inode *ip, int attrnamespace,
    struct uio *uio, size_t *size)
{
	struct m_ext2fs *fs;
	struct buf *bp;
	struct ext2fs_extattr_header *header;
	struct ext2fs_extattr_entry *entry;
	const char *attr_name;
	int name_len;
	int error;

	fs = ip->i_e2fs;

	error = FUNC4(ip->i_devvp, FUNC10(fs, ip->i_facl),
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

		if (size != NULL)
			*size += name_len + 1;

		if (uio != NULL) {
			char *name = FUNC11(name_len + 1, M_TEMP, M_WAITOK);
			name[0] = name_len;
			FUNC12(&name[1], attr_name, name_len);
			error = FUNC13(name, name_len + 1, uio);
			FUNC9(name, M_TEMP);
			if (error)
				break;
		}
	}

	FUNC5(bp);

	return (error);
}