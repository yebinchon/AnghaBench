
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;
struct user {char* name; int spc90; int spc60; int spc30; scalar_t__ count; int space; } ;
struct fs {int fs_ncg; int fs_ipg; } ;
typedef int ino_t ;


 int DIP (struct fs*,union dinode*,int ) ;
 int SIZE (int ) ;
 int actualblocks (struct fs*,union dinode*) ;
 int bcopy (int ,struct user*,int) ;
 scalar_t__ count ;
 int di_atime ;
 int di_uid ;
 int err (int,char*,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 scalar_t__ estimate ;
 int free (struct user*) ;
 union dinode* get_inode (int,struct fs*,int) ;
 int isfree (struct fs*,union dinode*) ;
 scalar_t__ malloc (int) ;
 int nusers ;
 int printf (char*,...) ;
 int sortusers (struct user*) ;
 scalar_t__ unused ;
 int users ;
 int uses (int ,int ,int ) ;
 int virtualblocks (struct fs*,union dinode*) ;

__attribute__((used)) static void
douser(int fd, struct fs *super, char *name)
{
 ino_t inode, maxino;
 struct user *usr, *usrs;
 union dinode *dp;
 int n;

 maxino = super->fs_ncg * super->fs_ipg - 1;
 for (inode = 0; inode < maxino; inode++) {
  errno = 0;
  if ((dp = get_inode(fd,super,inode))
      && !isfree(super, dp))
   uses(DIP(super, dp, di_uid),
       estimate ? virtualblocks(super, dp) :
    actualblocks(super, dp),
       DIP(super, dp, di_atime));
  else if (errno) {
   err(1, "%s", name);
  }
 }
 if (!(usrs = (struct user *)malloc(nusers * sizeof(struct user))))
  errx(1, "allocate users");
 bcopy(users,usrs,nusers * sizeof(struct user));
 sortusers(usrs);
 for (usr = usrs, n = nusers; --n >= 0 && usr->count; usr++) {
  printf("%5d",SIZE(usr->space));
  if (count)
   printf("\t%5ld",usr->count);
  printf("\t%-8s",usr->name);
  if (unused)
   printf("\t%5d\t%5d\t%5d",
          SIZE(usr->spc30),
          SIZE(usr->spc60),
          SIZE(usr->spc90));
  printf("\n");
 }
 free(usrs);
}
