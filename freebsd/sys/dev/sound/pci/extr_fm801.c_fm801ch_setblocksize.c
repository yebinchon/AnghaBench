
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int32_t ;
struct fm801_info {void* rec_blksize; void* play_blksize; } ;
struct fm801_chinfo {scalar_t__ dir; struct fm801_info* parent; } ;
typedef int kobj_t ;


 int DPRINT (char*,void*,scalar_t__) ;
 scalar_t__ PCMDIR_PLAY ;
 scalar_t__ PCMDIR_REC ;

__attribute__((used)) static u_int32_t
fm801ch_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 struct fm801_chinfo *ch = data;
 struct fm801_info *fm801 = ch->parent;






 if(ch->dir == PCMDIR_PLAY)
  fm801->play_blksize = blocksize;

 if(ch->dir == PCMDIR_REC)
  fm801->rec_blksize = blocksize;

 DPRINT("fm801ch_setblocksize %d (dir %d)\n",blocksize, ch->dir);

 return blocksize;
}
