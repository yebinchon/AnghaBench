
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {char* f_mntfromname; int f_mntonname; int f_fstypename; } ;
struct fstab {char* fs_spec; } ;


 int MFSNAMELEN ;
 int MNT_NOWAIT ;
 int blocksize ;
 int count ;
 int dofsizes ;
 int donames ;
 int douser ;
 int estimate ;
 int func ;
 int getbsize (int *,int*) ;
 struct fstab* getfsfile (char*) ;
 int getmntinfo (struct statfs**,int ) ;
 int header ;
 int headerlen ;
 int quot (char*,int ) ;
 int strncmp (int ,char*,int ) ;
 int unused ;
 int usage () ;

int
main(int argc, char *argv[])
{
 char all = 0;
 struct statfs *mp;
 struct fstab *fs;
 int cnt;

 func = douser;

 header = getbsize(&headerlen,&blocksize);

 while (--argc > 0 && **++argv == '-') {
  while (*++*argv) {
   switch (**argv) {
   case 'n':
    func = donames;
    break;
   case 'c':
    func = dofsizes;
    break;
   case 'a':
    all = 1;
    break;
   case 'f':
    count = 1;
    break;
   case 'h':
    estimate = 1;
    break;

   case 'k':
    blocksize = 1024;
    break;

   case 'v':
    unused = 1;
    break;
   default:
    usage();
   }
  }
 }
 if (all) {
  cnt = getmntinfo(&mp,MNT_NOWAIT);
  for (; --cnt >= 0; mp++) {
   if (!strncmp(mp->f_fstypename, "ufs", MFSNAMELEN))
    quot(mp->f_mntfromname, mp->f_mntonname);
  }
 }
 while (--argc >= 0) {
  if ((fs = getfsfile(*argv)) != ((void*)0))
   quot(fs->fs_spec, 0);
  else
   quot(*argv,0);
  argv++;
 }
 return 0;
}
