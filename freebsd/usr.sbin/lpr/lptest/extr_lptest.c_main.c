
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 scalar_t__ EOF ;
 int atoi (char*) ;
 int err (int,char*) ;
 int exit (int ) ;
 int fflush (int ) ;
 scalar_t__ putchar (char) ;
 int setbuf (int ,char*) ;
 int stdout ;

int
main(int argc, char **argv)
{
 int len, count;
 register int i, j, fc, nc;
 char outbuf[BUFSIZ];

 setbuf(stdout, outbuf);
 if (argc >= 2)
  len = atoi(argv[1]);
 else
  len = 79;
 if (argc >= 3)
  count = atoi(argv[2]);
 else
  count = 200;
 fc = ' ';
 for (i = 0; i < count; i++) {
  if (++fc == 0177)
   fc = ' ';
  nc = fc;
  for (j = 0; j < len; j++) {
   if (putchar(nc) == EOF)
    err(1, "Write error");
   if (++nc == 0177)
    nc = ' ';
  }
  if (putchar('\n') == EOF)
   err(1, "Write error");
 }
 (void) fflush(stdout);
 exit(0);
}
