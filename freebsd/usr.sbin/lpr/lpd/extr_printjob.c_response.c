
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int printer; } ;


 int LOG_INFO ;
 int pfd ;
 int read (int ,char*,int) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static char
response(const struct printer *pp)
{
 char resp;

 if (read(pfd, &resp, 1) != 1) {
  syslog(LOG_INFO, "%s: lost connection", pp->printer);
  return (-1);
 }
 return (resp);
}
