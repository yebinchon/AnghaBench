
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uef ;
struct ufs_extattr_fileheader {int uef_size; int uef_version; int uef_magic; } ;
typedef int ssize_t ;


 int O_CREAT ;
 int O_EXCL ;
 int O_TRUNC ;
 int O_WRONLY ;
 int UFS_EXTATTR_MAGIC ;
 int UFS_EXTATTR_VERSION ;
 int atoi (char*) ;
 int close (int) ;
 int getopt (int,char**,char*) ;
 int num_inodes_by_path (char*) ;
 int open (char*,int,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int perror (char*) ;
 int unlink (char*) ;
 int usage () ;
 int write (int,struct ufs_extattr_fileheader*,size_t) ;
 struct ufs_extattr_fileheader* zero_buf ;

int
initattr(int argc, char *argv[])
{
 struct ufs_extattr_fileheader uef;
 char *fs_path = ((void*)0);
 int ch, i, error, flags;
 ssize_t wlen;
 size_t easize;

 flags = O_CREAT | O_WRONLY | O_TRUNC | O_EXCL;
 optind = 0;
 while ((ch = getopt(argc, argv, "fp:r:w:")) != -1)
  switch (ch) {
  case 'f':
   flags &= ~O_EXCL;
   break;
  case 'p':
   fs_path = optarg;
   break;
  case '?':
  default:
   usage();
  }

 argc -= optind;
 argv += optind;

 if (argc != 2)
  usage();

 error = 0;
 if ((i = open(argv[1], flags, 0600)) == -1) {

  perror(argv[1]);
  return (-1);
 }
 uef.uef_magic = UFS_EXTATTR_MAGIC;
 uef.uef_version = UFS_EXTATTR_VERSION;
 uef.uef_size = atoi(argv[0]);
 if (write(i, &uef, sizeof(uef)) == -1)
  error = -1;
 else if (fs_path != ((void*)0)) {
  easize = (sizeof uef + uef.uef_size) *
      num_inodes_by_path(fs_path);
  while (easize > 0) {
   if (easize > sizeof zero_buf)
    wlen = write(i, zero_buf, sizeof zero_buf);
   else
    wlen = write(i, zero_buf, easize);
   if (wlen == -1) {
    error = -1;
    break;
   }
   easize -= wlen;
  }
 }
 if (error == -1) {
  perror(argv[1]);
  unlink(argv[1]);
  close(i);
  return (-1);
 }

 close(i);
 return (0);
}
