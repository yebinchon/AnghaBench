
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uef ;
struct ufs_extattr_fileheader {scalar_t__ uef_magic; int uef_version; int uef_size; } ;


 int O_RDONLY ;
 scalar_t__ UFS_EXTATTR_MAGIC ;
 int close (int) ;
 int fprintf (int ,char*,char*) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,char*,int,int) ;
 int read (int,struct ufs_extattr_fileheader*,int) ;
 int stderr ;
 int usage () ;

int
showattr(int argc, char *argv[])
{
 struct ufs_extattr_fileheader uef;
 int i, fd;

 if (argc != 1)
  usage();

 fd = open(argv[0], O_RDONLY);
 if (fd == -1) {
  perror(argv[0]);
  return (-1);
 }

 i = read(fd, &uef, sizeof(uef));
 if (i == -1) {
  perror(argv[0]);
  close(fd);
  return (-1);
 }
 if (i != sizeof(uef)) {
  fprintf(stderr, "%s: invalid file header\n", argv[0]);
  close(fd);
  return (-1);
 }

 if (uef.uef_magic != UFS_EXTATTR_MAGIC) {
  fprintf(stderr, "%s: bad magic\n", argv[0]);
  close(fd);
  return (-1);
 }

 printf("%s: version %d, size %d\n", argv[0], uef.uef_version,
     uef.uef_size);

 close(fd);
 return (0);
}
