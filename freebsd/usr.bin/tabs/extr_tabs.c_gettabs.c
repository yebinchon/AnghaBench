
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long NSTOPS ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 char* strtok (char*,char*) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static void
gettabs(char *arg, long stops[], long *nstops)
{
 char *tok, *end;
 long last, stop;

 for (last = *nstops = 0, tok = strtok(arg, ","); tok != ((void*)0);
     tok = strtok(((void*)0), ",")) {
  if (*nstops >= NSTOPS)
   errx(1, "too many tab stops (limit %d)", NSTOPS);
  errno = 0;
  stop = strtol(tok, &end, 10);
  if (errno != 0 || *end != '\0' || stop <= 0)
   errx(1, "%s: invalid tab stop", tok);
  if (*tok == '+') {
   if (tok == arg)
    errx(1, "%s: first tab may not be relative",
        tok);
   stop += last;
  }
  if (last > stop)
   errx(1, "cannot go backwards");
  last = stops[(*nstops)++] = stop;
 }
}
