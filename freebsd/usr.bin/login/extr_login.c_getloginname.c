
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int MAXLOGNAME ;
 int NO_SLEEP_EXIT ;
 scalar_t__ PAM_SILENT ;
 int badlogin (int ) ;
 int bail (int ,int ) ;
 int err (int,char*) ;
 int getchar () ;
 char* malloc (int) ;
 int memmove (char*,char*,int ) ;
 scalar_t__ pam_silent ;
 int printf (char*,char*) ;
 char* prompt ;
 int strlen (char*) ;
 int username ;

__attribute__((used)) static char *
getloginname(void)
{
 char *nbuf, *p;
 int ch;

 nbuf = malloc(MAXLOGNAME);
 if (nbuf == ((void*)0))
  err(1, "malloc()");
 do {
  (void)printf("%s", prompt);
  for (p = nbuf; (ch = getchar()) != '\n'; ) {
   if (ch == EOF) {
    badlogin(username);
    bail(NO_SLEEP_EXIT, 0);
   }
   if (p < nbuf + MAXLOGNAME - 1)
    *p++ = ch;
  }
 } while (p == nbuf);

 *p = '\0';
 if (nbuf[0] == '-') {
  pam_silent = 0;
  memmove(nbuf, nbuf + 1, strlen(nbuf));
 } else {
  pam_silent = PAM_SILENT;
 }
 return nbuf;
}
