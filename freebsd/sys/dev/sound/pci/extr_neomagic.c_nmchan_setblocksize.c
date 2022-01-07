
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_chinfo {int blksize; } ;
typedef int kobj_t ;



__attribute__((used)) static u_int32_t
nmchan_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 struct sc_chinfo *ch = data;

 ch->blksize = blocksize;

 return blocksize;
}
