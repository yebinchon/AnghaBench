
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int sig_t ;
typedef int FILE ;


 int ECHOCHECK ;
 int EOF ;
 int ETIMEOUT ;
 int FD ;
 int PROMPT ;
 int RAWFTP ;
 int SIGINT ;
 int SIGIOT ;
 int STRIP_PAR ;
 int TABEXPAND ;
 int TCSAFLUSH ;
 int VERBOSE ;
 int alarm (unsigned int) ;
 scalar_t__ boolean (int ) ;
 int ccc ;
 int character (int ) ;
 int defchars ;
 int fclose (int *) ;
 int * fildes ;
 int getc (int *) ;
 int kill (int ,int ) ;
 scalar_t__ lvalue (int ) ;
 int printf (char*,...) ;
 int prtime (char*,scalar_t__) ;
 int read (int ,char*,int) ;
 int * repdes ;
 int send (char) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 scalar_t__ stop ;
 int stopsnd ;
 int tcdrain (int ) ;
 int tcsetattr (int ,int ,int *) ;
 int term ;
 scalar_t__ time (int ) ;
 scalar_t__ timedout ;
 int tipout_pid ;
 int value (int ) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
transmit(FILE *fp, char *eofchars, char *command)
{
 char *pc, lastc;
 int c, ccount, lcount;
 time_t start_t, stop_t;
 sig_t f;

 kill(tipout_pid, SIGIOT);
 stop = 0;
 f = signal(SIGINT, stopsnd);
 tcsetattr(0, TCSAFLUSH, &defchars);
 read(repdes[0], (char *)&ccc, 1);
 if (command != ((void*)0)) {
  for (pc = command; *pc; pc++)
   send(*pc);
  if (boolean(value(ECHOCHECK)))
   read(FD, (char *)&c, 1);
  else {
   tcdrain(FD);
   sleep(5);
  }
 }
 lcount = 0;
 lastc = '\0';
 start_t = time(0);
 while (1) {
  ccount = 0;
  do {
   c = getc(fp);
   if (stop)
    goto out;
   if (c == EOF)
    goto out;
   if (c == 0177 && !boolean(value(RAWFTP)))
    continue;
   lastc = c;
   if (c < 040) {
    if (c == '\n') {
     if (!boolean(value(RAWFTP)))
      c = '\r';
    } else if (c == '\t') {
     if (!boolean(value(RAWFTP))) {
      if (boolean(value(TABEXPAND))) {
       send(' ');
       while ((++ccount % 8) != 0)
        send(' ');
       continue;
      }
     }
    } else
     if (!boolean(value(RAWFTP)))
      continue;
   }
   send(c);
  } while (c != '\r' && !boolean(value(RAWFTP)));
  if (boolean(value(VERBOSE)))
   printf("\r%d", ++lcount);
  if (boolean(value(ECHOCHECK))) {
   timedout = 0;
   alarm((unsigned int)lvalue(ETIMEOUT));
   do {
    read(FD, (char *)&c, 1);
    if (timedout || stop) {
     if (timedout)
      printf("\r\ntimed out at eol\r\n");
     alarm(0);
     goto out;
    }
   } while ((c&STRIP_PAR) != character(value(PROMPT)));
   alarm(0);
  }
 }
out:
 if (lastc != '\n' && !boolean(value(RAWFTP)))
  send('\r');
 if (eofchars) {
  for (pc = eofchars; *pc; pc++)
   send(*pc);
 }
 stop_t = time(0);
 fclose(fp);
 signal(SIGINT, f);
 if (boolean(value(VERBOSE))) {
  if (boolean(value(RAWFTP)))
   prtime(" chars transferred in ", stop_t-start_t);
  else
   prtime(" lines transferred in ", stop_t-start_t);
 }
 write(fildes[1], (char *)&ccc, 1);
 tcsetattr(0, TCSAFLUSH, &term);
}
