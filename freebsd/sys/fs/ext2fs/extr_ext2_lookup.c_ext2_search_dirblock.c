
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vnode {int dummy; } ;
struct inode {TYPE_1__* i_e2fs; } ;
struct ext2fs_searchslot {scalar_t__ slotstatus; int slotneeded; int slotoffset; int slotsize; int slotfreespace; } ;
struct ext2fs_direct_tail {int dummy; } ;
struct ext2fs_direct_2 {int e2d_reclen; scalar_t__ e2d_ino; int e2d_namlen; int e2d_name; } ;
typedef void* doff_t ;
struct TYPE_2__ {int e2fs_bsize; } ;


 scalar_t__ COMPACT ;
 scalar_t__ EXT2_DIR_REC_LEN (int) ;
 scalar_t__ FOUND ;
 struct vnode* ITOV (struct inode*) ;
 scalar_t__ NONE ;
 int bcmp (char const*,int ,unsigned int) ;
 scalar_t__ dirchk ;
 int ext2_dirbad (struct inode*,void*,char*) ;
 scalar_t__ ext2_dirbadentry (struct vnode*,struct ext2fs_direct_2*,int) ;
 scalar_t__ ext2_is_dirent_tail (struct inode*,struct ext2fs_direct_2*) ;

int
ext2_search_dirblock(struct inode *ip, void *data, int *foundp,
    const char *name, int namelen, int *entryoffsetinblockp,
    doff_t *offp, doff_t *prevoffp, doff_t *endusefulp,
    struct ext2fs_searchslot *ssp)
{
 struct vnode *vdp;
 struct ext2fs_direct_2 *ep, *top;
 uint32_t bsize = ip->i_e2fs->e2fs_bsize;
 int offset = *entryoffsetinblockp;
 int namlen;

 vdp = ITOV(ip);

 ep = (struct ext2fs_direct_2 *)((char *)data + offset);
 top = (struct ext2fs_direct_2 *)((char *)data + bsize);
 while (ep < top) {






  if (ep->e2d_reclen == 0 ||
      (dirchk && ext2_dirbadentry(vdp, ep, offset))) {
   int i;

   ext2_dirbad(ip, *offp, "mangled entry");
   i = bsize - (offset & (bsize - 1));
   *offp += i;
   offset += i;
   continue;
  }







  if (ssp->slotstatus != FOUND) {
   int size = ep->e2d_reclen;

   if (ep->e2d_ino != 0)
    size -= EXT2_DIR_REC_LEN(ep->e2d_namlen);
   else if (ext2_is_dirent_tail(ip, ep))
    size -= sizeof(struct ext2fs_direct_tail);
   if (size > 0) {
    if (size >= ssp->slotneeded) {
     ssp->slotstatus = FOUND;
     ssp->slotoffset = *offp;
     ssp->slotsize = ep->e2d_reclen;
    } else if (ssp->slotstatus == NONE) {
     ssp->slotfreespace += size;
     if (ssp->slotoffset == -1)
      ssp->slotoffset = *offp;
     if (ssp->slotfreespace >= ssp->slotneeded) {
      ssp->slotstatus = COMPACT;
      ssp->slotsize = *offp +
          ep->e2d_reclen -
          ssp->slotoffset;
     }
    }
   }
  }



  if (ep->e2d_ino) {
   namlen = ep->e2d_namlen;
   if (namlen == namelen &&
       !bcmp(name, ep->e2d_name, (unsigned)namlen)) {





    *foundp = 1;
    return (0);
   }
  }
  *prevoffp = *offp;
  *offp += ep->e2d_reclen;
  offset += ep->e2d_reclen;
  *entryoffsetinblockp = offset;
  if (ep->e2d_ino)
   *endusefulp = *offp;



  ep = (struct ext2fs_direct_2 *)((char *)data + offset);
 }

 return (0);
}
