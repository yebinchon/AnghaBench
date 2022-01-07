
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 int LOG_ERR ;
 int exit (int ) ;
 char* strdup (char const*) ;
 int syslog (int ,char*) ;

__attribute__((used)) static char *
newstr(const char *cp)
{
 char *cr;

 if ((cr = strdup(cp != ((void*)0) ? cp : "")))
  return (cr);
 syslog(LOG_ERR, "strdup: %m");
 exit(EX_OSERR);
}
