
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _PATH_MAILDIR ;
 char* getenv (char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlcpy (char*,char*,int) ;

void
findmail(char *user, char *buf, int buflen)
{
 char *tmp = getenv("MAIL");

 if (tmp == ((void*)0))
  (void)snprintf(buf, buflen, "%s/%s", _PATH_MAILDIR, user);
 else
  (void)strlcpy(buf, tmp, buflen);
}
