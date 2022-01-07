
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct addrinfo {int ai_family; void* ai_flags; } ;




 void* AI_NUMERICHOST ;
 int LOG_ERR ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int inet_pton (int const,char const*,int *) ;
 scalar_t__ strcmp (char*,char const*) ;
 int syslog (int ,char*,char const*,int ) ;

__attribute__((used)) static int
setbindhost(struct addrinfo **ai, const char *bindhost, struct addrinfo hints)
{
 int ecode;
 u_int32_t host_addr[4];
 const char *hostptr;

 if (bindhost == ((void*)0) || strcmp("*", bindhost) == 0)
  hostptr = ((void*)0);
 else
  hostptr = bindhost;

 if (hostptr != ((void*)0)) {
  switch (hints.ai_family) {
  case 129:
   if (inet_pton(129, hostptr, host_addr) == 1) {
    hints.ai_flags = AI_NUMERICHOST;
   } else {
    if (inet_pton(128, hostptr,
        host_addr) == 1)
     return (1);
   }
   break;
  case 128:
   if (inet_pton(128, hostptr, host_addr) == 1) {
    hints.ai_flags = AI_NUMERICHOST;
   } else {
    if (inet_pton(129, hostptr,
        host_addr) == 1)
     return (1);
   }
   break;
  default:
   break;
  }
 }

 ecode = getaddrinfo(hostptr, "nfs", &hints, ai);
 if (ecode != 0) {
  syslog(LOG_ERR, "getaddrinfo %s: %s", bindhost,
      gai_strerror(ecode));
  return (1);
 }
 return (0);
}
