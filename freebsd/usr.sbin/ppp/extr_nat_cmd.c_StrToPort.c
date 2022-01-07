
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct servent {int s_port; } ;


 int LogWARN ;
 struct servent* getservbyname (char const*,char const*) ;
 int log_Printf (int ,char*,char const*,char const*) ;
 int ntohs (int ) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int
StrToPort(const char *str, u_short *port, const char *proto)
{
  struct servent *sp;
  char *end;

  *port = strtol(str, &end, 10);
  if (*end != '\0') {
    sp = getservbyname(str, proto);
    if (sp == ((void*)0)) {
      log_Printf(LogWARN, "StrToAddr: Unknown port or service %s/%s.\n",
         str, proto);
      return -1;
    }
    *port = ntohs(sp->s_port);
  }

  return 0;
}
