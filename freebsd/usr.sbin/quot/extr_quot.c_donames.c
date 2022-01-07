
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
typedef int uintmax_t ;
struct fs {int fs_ncg; int fs_ipg; } ;
typedef int ino_t ;
struct TYPE_2__ {char* name; } ;


 int DIP (struct fs*,union dinode*,int ) ;
 int EOF ;
 int di_uid ;
 int err (int,char*,char*) ;
 scalar_t__ errno ;
 union dinode* get_inode (int,struct fs*,int) ;
 int getchar () ;
 int isfree (struct fs*,union dinode*) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int scanf (char*,int*) ;
 int stdin ;
 int ungetc (int,int ) ;
 TYPE_1__* user (int ) ;
 int warnx (char*,int) ;

__attribute__((used)) static void
donames(int fd, struct fs *super, char *name)
{
 int c;
 ino_t maxino;
 uintmax_t inode;
 union dinode *dp;

 maxino = super->fs_ncg * super->fs_ipg - 1;

 while ((c = getchar()) != EOF && (c < '0' || c > '9'))
  while ((c = getchar()) != EOF && c != '\n');
 ungetc(c,stdin);
 while (scanf("%ju", &inode) == 1) {
  if (inode > maxino) {
   warnx("illegal inode %ju", inode);
   return;
  }
  errno = 0;
  if ((dp = get_inode(fd,super,inode))
      && !isfree(super, dp)) {
   printf("%s\t",user(DIP(super, dp, di_uid))->name);

   while ((c = getchar()) == ' ' || c == '\t');

   while (c != EOF && c != '\n') {
    putchar(c);
    c = getchar();
   }
   putchar('\n');
  } else {
   if (errno) {
    err(1, "%s", name);
   }

   while ((c = getchar()) != EOF && c != '\n');
  }
  if (c == EOF)
   break;
 }
}
