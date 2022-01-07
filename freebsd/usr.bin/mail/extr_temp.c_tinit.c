
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PATHSIZE ;
 char* _PATH_TMP ;
 scalar_t__ debug ;
 int errx (int,char*,...) ;
 char* getenv (char*) ;
 scalar_t__ getuserid (char*) ;
 char* homedir ;
 char* myname ;
 int printf (char*,char*,char*) ;
 scalar_t__ rcvmode ;
 char* savestr (char*) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 char* tmpdir ;
 char* username () ;

void
tinit(void)
{
 char *cp;

 if ((tmpdir = getenv("TMPDIR")) == ((void*)0) || *tmpdir == '\0')
  tmpdir = _PATH_TMP;
 if ((tmpdir = strdup(tmpdir)) == ((void*)0))
  errx(1, "Out of memory");

 cp = tmpdir + strlen(tmpdir) - 1;
 while (cp > tmpdir && *cp == '/') {
  *cp = '\0';
  cp--;
 }





 if (myname != ((void*)0)) {
  if (getuserid(myname) < 0)
   errx(1, "\"%s\" is not a user of this system", myname);
 } else {
  if ((cp = username()) == ((void*)0)) {
   myname = "ubluit";
   if (rcvmode)
    errx(1, "Who are you!?");
  } else
   myname = savestr(cp);
 }
 if ((cp = getenv("HOME")) == ((void*)0) || *cp == '\0' ||
     strlen(cp) >= PATHSIZE)
  homedir = ((void*)0);
 else
  homedir = savestr(cp);
 if (debug)
  printf("user = %s, homedir = %s\n", myname,
      homedir ? homedir : "NONE");
}
