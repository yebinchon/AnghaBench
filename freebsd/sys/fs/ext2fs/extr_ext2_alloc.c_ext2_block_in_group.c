
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_ext2fs {int dummy; } ;
typedef int e4fs_daddr_t ;


 int ext2_get_group_number (struct m_ext2fs*,int ) ;

__attribute__((used)) static int
ext2_block_in_group(struct m_ext2fs *fs, e4fs_daddr_t block, int cg)
{

 return ((ext2_get_group_number(fs, block) == cg) ? 1 : 0);
}
