
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_port; } ;


 int LogWARN ;
 struct servent* getservbyname (char const*,char const*) ;
 int log_Printf (int ,char*,char const*) ;
 int ntohs (int ) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static int
ParsePort(const char *service, const char *proto)
{
  struct servent *servent;
  char *cp;
  int port;

  servent = getservbyname(service, proto);
  if (servent != ((void*)0))
    return ntohs(servent->s_port);

  port = strtol(service, &cp, 0);
  if (cp == service) {
    log_Printf(LogWARN, "ParsePort: %s is not a port name or number.\n",
       service);
    return 0;
  }
  return port;
}
