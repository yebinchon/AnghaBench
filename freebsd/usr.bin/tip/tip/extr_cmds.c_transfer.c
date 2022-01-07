
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int sig_t ;


 int BUFSIZ ;
 int FD ;
 int FRAMESIZE ;
 int SIGINT ;
 int SIGIOT ;
 char STRIP_PAR ;
 int TCSAFLUSH ;
 int VERBOSE ;
 scalar_t__ any (char,char*) ;
 scalar_t__ boolean (int ) ;
 int ccc ;
 int close (int) ;
 int defchars ;
 int* fildes ;
 int intbuf ;
 int intcopy ;
 int kill (int ,int ) ;
 int number (int ) ;
 int parwrite (int ,char*,int) ;
 int printf (char*,...) ;
 int prtime (char*,scalar_t__) ;
 int quit ;
 scalar_t__ read (int ,char*,int) ;
 int * repdes ;
 int setjmp (int ) ;
 int signal (int ,int ) ;
 int size (char*) ;
 int tcsetattr (int ,int ,int *) ;
 int term ;
 scalar_t__ time (int ) ;
 int tipout_pid ;
 int value (int ) ;
 scalar_t__ write (int,char*,int) ;

__attribute__((used)) static void
transfer(char *buf, int fd, char *eofchars)
{
 int ct, eof;
 char c, buffer[BUFSIZ];
 char *p = buffer;
 size_t cnt;
 time_t start;
 sig_t f;
 char r;

 if (number(value(FRAMESIZE)) > BUFSIZ || number(value(FRAMESIZE)) < 1) {
  printf("framesize must be >= 1 and <= %d\r\n", BUFSIZ);
  close(fd);
  return;
 }

 parwrite(FD, buf, size(buf));
 quit = 0;
 kill(tipout_pid, SIGIOT);
 read(repdes[0], (char *)&ccc, 1);




 r = '\r';
 parwrite(FD, &r, 1);
 do
  read(FD, &c, 1);
 while ((c&STRIP_PAR) != '\n');
 tcsetattr(0, TCSAFLUSH, &defchars);

 (void) setjmp(intbuf);
 f = signal(SIGINT, intcopy);
 start = time(0);
 for (ct = 0; !quit;) {
  eof = read(FD, &c, 1) <= 0;
  c &= STRIP_PAR;
  if (quit)
   continue;
  if (eof || any(c, eofchars))
   break;
  if (c == 0)
   continue;
  if (c == '\r')
   continue;
  *p++ = c;

  if (c == '\n' && boolean(value(VERBOSE)))
   printf("\r%d", ++ct);
  if ((cnt = (p-buffer)) == (size_t)number(value(FRAMESIZE))) {
   if ((size_t)write(fd, buffer, cnt) != cnt) {
    printf("\r\nwrite error\r\n");
    quit = 1;
   }
   p = buffer;
  }
 }
 if ((cnt = (p-buffer)))
  if ((size_t)write(fd, buffer, cnt) != cnt)
   printf("\r\nwrite error\r\n");

 if (boolean(value(VERBOSE)))
  prtime(" lines transferred in ", time(0)-start);
 tcsetattr(0, TCSAFLUSH, &term);
 write(fildes[1], (char *)&ccc, 1);
 signal(SIGINT, f);
 close(fd);
}
