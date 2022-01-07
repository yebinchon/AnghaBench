
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int lba_t ;


 int BSD_BOOTBLOCK_SIZE ;
 scalar_t__ SCHEME_META_IMG_END ;
 scalar_t__ SCHEME_META_IMG_START ;
 int round_block (int) ;
 int round_cylinder (int) ;
 int secsz ;

__attribute__((used)) static lba_t
bsd_metadata(u_int where, lba_t blk)
{

 if (where == SCHEME_META_IMG_START)
  blk += BSD_BOOTBLOCK_SIZE / secsz;
 else if (where == SCHEME_META_IMG_END)
  blk = round_cylinder(blk);
 else
  blk = round_block(blk);
 return (blk);
}
