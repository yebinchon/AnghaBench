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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct m_ext2fs {int /*<<< orphan*/  e2fs_csum_seed; } ;
struct inode {int /*<<< orphan*/  i_gen; int /*<<< orphan*/  i_number; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_direct_2 {int dummy; } ;
typedef  int /*<<< orphan*/  inum ;
typedef  int /*<<< orphan*/  gen ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint32_t
FUNC1(struct inode *ip, struct ext2fs_direct_2 *ep, int size)
{
	struct m_ext2fs *fs;
	char *buf;
	uint32_t inum, gen, crc;

	fs = ip->i_e2fs;

	buf = (char *)ep;

	inum = ip->i_number;
	gen = ip->i_gen;
	crc = FUNC0(fs->e2fs_csum_seed, (uint8_t *)&inum, sizeof(inum));
	crc = FUNC0(crc, (uint8_t *)&gen, sizeof(gen));
	crc = FUNC0(crc, (uint8_t *)buf, size);

	return (crc);
}