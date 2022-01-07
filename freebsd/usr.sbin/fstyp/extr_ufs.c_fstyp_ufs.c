
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {int fs_volname; } ;
typedef int FILE ;



 int STDSB ;
 int fileno (int *) ;
 int sbget (int ,struct fs**,int ) ;
 int strlcpy (char*,int ,size_t) ;

int
fstyp_ufs(FILE *fp, char *label, size_t labelsize)
{
 struct fs *fs;

 switch (sbget(fileno(fp), &fs, STDSB)) {
 case 0:
  strlcpy(label, fs->fs_volname, labelsize);
  return (0);
 case 128:

  return (1);
 default:

  return (1);
 }
}
