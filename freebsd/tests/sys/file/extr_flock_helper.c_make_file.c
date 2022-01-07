
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int off_t ;


 int O_RDWR ;
 scalar_t__ S_ISREG (int ) ;
 int err (int,char*,...) ;
 int free (char*) ;
 scalar_t__ ftruncate (int,int ) ;
 char* malloc (size_t) ;
 int mkstemp (char*) ;
 int open (char const*,int ) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static int
make_file(const char *pathname, off_t sz)
{
 struct stat st;
 const char *template = "/flocktempXXXXXX";
 size_t len;
 char *filename;
 int fd;

 if (stat(pathname, &st) == 0) {
  if (S_ISREG(st.st_mode)) {
   fd = open(pathname, O_RDWR);
   if (fd < 0)
    err(1, "open(%s)", pathname);
   if (ftruncate(fd, sz) < 0)
    err(1, "ftruncate");
   return (fd);
  }
 }

 len = strlen(pathname) + strlen(template) + 1;
 filename = malloc(len);
 strcpy(filename, pathname);
 strcat(filename, template);
 fd = mkstemp(filename);
 if (fd < 0)
  err(1, "mkstemp");
 if (ftruncate(fd, sz) < 0)
  err(1, "ftruncate");
 if (unlink(filename) < 0)
  err(1, "unlink");
 free(filename);

 return (fd);
}
