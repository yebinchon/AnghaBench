
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DV ;
 char* NOSTR ;
 char* __progname ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* getenv (char*) ;
 int getremcap (char*) ;
 int stderr ;
 char* strchr (char*,char) ;

char *
getremote(char *host)
{
 char *cp;
 static char *next;
 static int lookedup = 0;

 if (!lookedup) {
  if (host == NOSTR && (host = getenv("HOST")) == NOSTR) {
   fprintf(stderr, "%s: no host specified\n", __progname);
   exit(3);
  }
  getremcap(host);
  next = DV;
  lookedup++;
 }




 if (next == NOSTR)
  return (NOSTR);
 if ((cp = strchr(next, ',')) == ((void*)0)) {
  DV = next;
  next = NOSTR;
 } else {
  *cp++ = '\0';
  DV = next;
  next = cp;
 }
 return (DV);
}
