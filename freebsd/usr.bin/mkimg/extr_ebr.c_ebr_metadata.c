
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int lba_t ;


 scalar_t__ SCHEME_META_PART_BEFORE ;
 int round_track (int) ;

__attribute__((used)) static lba_t
ebr_metadata(u_int where, lba_t blk)
{

 blk += (where == SCHEME_META_PART_BEFORE) ? 1 : 0;
 return (round_track(blk));
}
