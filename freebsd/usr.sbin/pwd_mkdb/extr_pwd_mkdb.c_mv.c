
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int MAXPATHLEN ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int close (int) ;
 char* dirname (char*) ;
 int errno ;
 int error (char*) ;
 scalar_t__ fsync (int) ;
 int open (char*,int) ;
 scalar_t__ rename (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;

void
mv(char *from, char *to)
{
 char buf[MAXPATHLEN];
 char *to_dir;
 int to_dir_fd = -1;





 if (rename(from, to) != 0 ||
     (to_dir = dirname(to)) == ((void*)0) ||
     (to_dir_fd = open(to_dir, O_RDONLY|O_DIRECTORY)) == -1 ||
     fsync(to_dir_fd) != 0) {
  int sverrno = errno;
  (void)snprintf(buf, sizeof(buf), "%s to %s", from, to);
  errno = sverrno;
  if (to_dir_fd != -1)
   close(to_dir_fd);
  error(buf);
 }

 if (to_dir_fd != -1)
  close(to_dir_fd);
}
