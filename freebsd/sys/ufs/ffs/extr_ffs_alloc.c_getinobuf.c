
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int u_int ;
struct inode {int dummy; } ;
struct fs {int fs_ipg; scalar_t__ fs_bsize; } ;
struct buf {int dummy; } ;


 int ITODEVVP (struct inode*) ;
 struct fs* ITOFS (struct inode*) ;
 int fsbtodb (struct fs*,int ) ;
 struct buf* getblk (int ,int ,int,int ,int ,int) ;
 int ino_to_fsba (struct fs*,scalar_t__) ;

__attribute__((used)) static inline struct buf *
getinobuf(struct inode *ip, u_int cg, u_int32_t cginoblk, int gbflags)
{
 struct fs *fs;

 fs = ITOFS(ip);
 return (getblk(ITODEVVP(ip), fsbtodb(fs, ino_to_fsba(fs,
     cg * fs->fs_ipg + cginoblk)), (int)fs->fs_bsize, 0, 0,
     gbflags));
}
