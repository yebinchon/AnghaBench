
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG ;
 int EX_DATAERR ;
 int LOG_ERR ;
 int exit (int ) ;
 char* skip (char**) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static char *
sskip(char **cpp)
{
 char *cp;

 cp = skip(cpp);
 if (cp == ((void*)0)) {
  syslog(LOG_ERR, "%s: syntax error", CONFIG);
  exit(EX_DATAERR);
 }
 return (cp);
}
