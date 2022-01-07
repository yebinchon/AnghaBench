
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINELENGTH ;
 int ROTATE (int,int) ;
 int STDIN_FILENO ;
 int bzero (int*,int) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ isascii (int) ;
 scalar_t__ islower (int) ;
 scalar_t__ isupper (int) ;
 int log (double) ;
 char* malloc (size_t) ;
 int printit (char*) ;
 int putchar (int ) ;
 int read (int ,char*,size_t) ;
 int stderr ;
 int* stdf ;
 char* strerror (int ) ;

int
main(int argc, char **argv)
{
 int ch, dot, i, nread, winnerdot = 0;
 char *inbuf;
 int obs[26], try, winner;

 if (argc > 1)
  printit(argv[1]);

 if (!(inbuf = malloc((size_t)LINELENGTH))) {
  (void)fprintf(stderr, "caesar: out of memory.\n");
  exit(1);
 }


 for (i = 0; i < 26; ++i)
  stdf[i] = log(stdf[i]) + log(26.0 / 100.0);


 bzero(obs, 26 * sizeof(int));

 if ((nread = read(STDIN_FILENO, inbuf, (size_t)LINELENGTH)) < 0) {
  (void)fprintf(stderr, "caesar: %s\n", strerror(errno));
  exit(1);
 }
 for (i = nread; i--;) {
  ch = (unsigned char) inbuf[i];
  if (isascii(ch)) {
   if (islower(ch))
    ++obs[ch - 'a'];
   else if (isupper(ch))
    ++obs[ch - 'A'];
  }
 }





 for (try = winner = 0; try < 26; ++try) {
  dot = 0;
  for (i = 0; i < 26; i++)
   dot += obs[i] * stdf[(i + try) % 26];

  if (try == 0)
   winnerdot = dot;
  if (dot > winnerdot) {

   winner = try;
   winnerdot = dot;
  }
 }

 for (;;) {
  for (i = 0; i < nread; ++i) {
   ch = (unsigned char) inbuf[i];
   putchar(ROTATE(ch, winner));
  }
  if (nread < LINELENGTH)
   break;
  if ((nread = read(STDIN_FILENO, inbuf, (size_t)LINELENGTH)) < 0) {
   (void)fprintf(stderr, "caesar: %s\n", strerror(errno));
   exit(1);
  }
 }
 exit(0);
}
