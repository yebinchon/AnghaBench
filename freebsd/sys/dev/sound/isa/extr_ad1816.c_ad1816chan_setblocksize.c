
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ad1816_chinfo {int blksz; } ;
typedef int kobj_t ;



__attribute__((used)) static u_int32_t
ad1816chan_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 struct ad1816_chinfo *ch = data;

 ch->blksz = blocksize;
 return ch->blksz;
}
