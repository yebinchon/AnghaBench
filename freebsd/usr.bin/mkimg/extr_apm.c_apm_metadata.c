
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef scalar_t__ lba_t ;


 scalar_t__ SCHEME_META_IMG_START ;
 scalar_t__ nparts ;
 scalar_t__ round_block (scalar_t__) ;

__attribute__((used)) static lba_t
apm_metadata(u_int where, lba_t blk)
{

 blk += (where == SCHEME_META_IMG_START) ? nparts + 2 : 0;
 return (round_block(blk));
}
