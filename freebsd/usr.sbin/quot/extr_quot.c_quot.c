
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {int dummy; } ;



 int STDSB ;
 int close (int) ;
 int func (int,struct fs*,char*) ;
 int get_inode (int,int *,int ) ;
 int initfsizes () ;
 int inituser () ;
 int open (char*,int ) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int sbget (int,struct fs**,int ) ;
 int stub1 (int,struct fs*,char*) ;
 int warn (char*,...) ;

void
quot(char *name, char *mp)
{
 int fd;
 struct fs *fs;

 get_inode(-1, ((void*)0), 0);
 inituser();
 initfsizes();
 if ((fd = open(name,0)) < 0) {
  warn("%s", name);
  close(fd);
  return;
 }
 switch (sbget(fd, &fs, STDSB)) {
 case 0:
  break;
 case 128:
  warn("Cannot find file system superblock");
  close(fd);
  return;
 default:
  warn("Unable to read file system superblock");
  close(fd);
  return;
 }
 printf("%s:",name);
 if (mp)
  printf(" (%s)",mp);
 putchar('\n');
 (*func)(fd, fs, name);
 close(fd);
}
