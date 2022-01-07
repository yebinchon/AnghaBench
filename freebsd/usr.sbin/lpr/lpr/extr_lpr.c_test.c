
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct exec {int dummy; } ;
typedef int execb ;
struct TYPE_3__ {int st_mode; scalar_t__ st_size; } ;


 int N_BADMAG (struct exec) ;
 int O_RDONLY ;
 int S_IFDIR ;
 int S_IFMT ;
 scalar_t__ access (char const*,int) ;
 int checkwriteperm (char const*,char*) ;
 int close (int) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int open (char const*,int ) ;
 int printf (char*,...) ;
 char* progname ;
 int read (int,struct exec*,int) ;
 scalar_t__ rflag ;
 scalar_t__ stat (char const*,TYPE_1__*) ;
 TYPE_1__ statb ;
 int strlcpy (char*,char const*,size_t) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
test(const char *file)
{
 struct exec execb;
 size_t dlen;
 int fd;
 char *cp, *dirpath;

 if (access(file, 4) < 0) {
  printf("%s: cannot access %s\n", progname, file);
  return(-1);
 }
 if (stat(file, &statb) < 0) {
  printf("%s: cannot stat %s\n", progname, file);
  return(-1);
 }
 if ((statb.st_mode & S_IFMT) == S_IFDIR) {
  printf("%s: %s is a directory\n", progname, file);
  return(-1);
 }
 if (statb.st_size == 0) {
  printf("%s: %s is an empty file\n", progname, file);
  return(-1);
  }
 if ((fd = open(file, O_RDONLY)) < 0) {
  printf("%s: cannot open %s\n", progname, file);
  return(-1);
 }



 if (read(fd, &execb, sizeof(execb)) == sizeof(execb) &&
     !N_BADMAG(execb)) {
  printf("%s: %s is an executable program", progname, file);
  goto error1;
 }
 (void) close(fd);
 if (rflag) {





  if ((cp = strrchr(file, '/')) == ((void*)0)) {
   if (checkwriteperm(file,".") == 0)
    return(1);
  } else {
   if (cp == file) {
    fd = checkwriteperm(file,"/");
   } else {

    dlen = cp - file + 1;
    dirpath = malloc(dlen);
    strlcpy(dirpath, file, dlen);
    fd = checkwriteperm(file, dirpath);
    free(dirpath);
   }
   if (fd == 0)
    return(1);
  }
  printf("%s: %s: is not removable by you\n", progname, file);
 }
 return(0);

error1:
 printf(" and is unprintable\n");
 (void) close(fd);
 return(-1);
}
