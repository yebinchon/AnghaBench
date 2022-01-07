
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;


 int MKFILE_FLAG ;
 int MKFILE_MODE ;
 unsigned long long MKFILE_WBUF ;
 int SEEK_SET ;
 int buf ;
 int close (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,unsigned long long) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int nofill ;
 int open (char*,int ,int ) ;
 int stdout ;
 scalar_t__ verbose ;
 scalar_t__ write (int,int ,size_t) ;

__attribute__((used)) static int
create_file(char *f, unsigned long long s)
{
 int fd;
 size_t w;
 ssize_t ws;

 if (verbose) {
  fprintf(stdout, "%s %llu bytes\n", f, s);
  fflush(stdout);
 }


 if ((fd = open(f, MKFILE_FLAG, MKFILE_MODE)) < 0) {
  return -1;
 }


 if ((lseek(fd, (off_t)(s - 1LL), SEEK_SET) == (off_t)-1) ||
     (write(fd, buf, (size_t)1) == (ssize_t)-1)) {





  return -1;
 }


 if (!nofill) {
  if (lseek(fd, (off_t)0, SEEK_SET) == (off_t)-1) {

   return -1;
  }
  while (s) {
   w = (s > MKFILE_WBUF) ? MKFILE_WBUF : s;
   if ((ws = write(fd, buf, w)) == (ssize_t)-1) {

    return -1;
   }
   s -= ws;
  }
 }
 close(fd);

 return 0;
}
