
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 int BUFLEN ;
 int STDOUT_FILENO ;
 int infile_newdata (int) ;
 int maybe_warn (char*,...) ;
 int read (int,char*,int) ;
 int write_retry (int ,...) ;

__attribute__((used)) static off_t
cat_fd(unsigned char * prepend, size_t count, off_t *gsizep, int fd)
{
 char buf[BUFLEN];
 off_t in_tot;
 ssize_t w;

 in_tot = count;
 w = write_retry(STDOUT_FILENO, prepend, count);
 if (w == -1 || (size_t)w != count) {
  maybe_warn("write to stdout");
  return -1;
 }
 for (;;) {
  ssize_t rv;

  rv = read(fd, buf, sizeof buf);
  if (rv == 0)
   break;
  if (rv < 0) {
   maybe_warn("read from fd %d", fd);
   break;
  }
  infile_newdata(rv);

  if (write_retry(STDOUT_FILENO, buf, rv) != rv) {
   maybe_warn("write to stdout");
   break;
  }
  in_tot += rv;
 }

 if (gsizep)
  *gsizep = in_tot;
 return (in_tot);
}
