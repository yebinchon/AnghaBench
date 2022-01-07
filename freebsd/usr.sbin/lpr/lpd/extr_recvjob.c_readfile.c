
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int printer; } ;
typedef scalar_t__ ssize_t ;


 int FILMOD ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int SPL_BUFSIZ ;
 int STDOUT_FILENO ;
 int ack () ;
 int close (int) ;
 int errno ;
 int frecverr (char*,int ,...) ;
 scalar_t__ noresponse () ;
 int open (char*,int,int ) ;
 int read (int ,char*,size_t) ;
 int * strchr (char*,char) ;
 int strerror (int ) ;
 int unlink (char*) ;
 scalar_t__ write (int,char*,size_t) ;

__attribute__((used)) static int
readfile(struct printer *pp, char *file, size_t size)
{
 register char *cp;
 char buf[SPL_BUFSIZ];
 size_t amt, i;
 int err, fd, j;

 fd = open(file, O_CREAT|O_EXCL|O_WRONLY, FILMOD);
 if (fd < 0) {
  frecverr("%s: readfile: error on open(%s): %s",
    pp->printer, file, strerror(errno));

 }
 ack();
 err = 0;
 for (i = 0; i < size; i += SPL_BUFSIZ) {
  amt = SPL_BUFSIZ;
  cp = buf;
  if (i + amt > size)
   amt = size - i;
  do {
   j = read(STDOUT_FILENO, cp, amt);
   if (j <= 0) {
    frecverr("%s: lost connection", pp->printer);

   }
   amt -= j;
   cp += j;
  } while (amt > 0);
  amt = SPL_BUFSIZ;
  if (i + amt > size)
   amt = size - i;
  if (write(fd, buf, amt) != (ssize_t)amt) {
   err++;
   break;
  }
 }
 (void) close(fd);
 if (err) {
  frecverr("%s: write error on close(%s)", pp->printer, file);

 }
 if (noresponse()) {
  if (strchr(file, '/') == ((void*)0))
   (void) unlink(file);
  return (0);
 }
 ack();
 return (1);
}
