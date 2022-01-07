
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ypldap_addr_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ ss_family; } ;
struct ypldap_addr {TYPE_2__ ss; } ;
struct sockaddr_in6 {int sin6_len; int sin6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; } ;
struct in6_addr {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addr; struct addrinfo* ai_next; int ai_socktype; } ;
typedef int hints ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EAI_AGAIN ;
 int EAI_NONAME ;
 int MAX_SERVERS_DNS ;
 scalar_t__ PF_UNSPEC ;
 int SOCK_DGRAM ;
 int TAILQ_INSERT_HEAD (struct ypldap_addr_list*,struct ypldap_addr*,int ) ;
 struct ypldap_addr* calloc (int,int) ;
 int fatal (int *) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 int log_warnx (char*,char const*,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int next ;

int
host_dns(const char *s, struct ypldap_addr_list *hn)
{
 struct addrinfo hints, *res0, *res;
 int error, cnt = 0;
 struct sockaddr_in *sa_in;
 struct sockaddr_in6 *sa_in6;
 struct ypldap_addr *h;

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_DGRAM;
 error = getaddrinfo(s, ((void*)0), &hints, &res0);
 if (error == EAI_AGAIN || error == EAI_NONAME)
   return (0);
 if (error) {
  log_warnx("could not parse \"%s\": %s", s,
      gai_strerror(error));
  return (-1);
 }

 for (res = res0; res && cnt < MAX_SERVERS_DNS; res = res->ai_next) {
  if (res->ai_family != AF_INET &&
      res->ai_family != AF_INET6)
   continue;
  if ((h = calloc(1, sizeof(struct ypldap_addr))) == ((void*)0))
   fatal(((void*)0));
  h->ss.ss_family = res->ai_family;
  if (res->ai_family == AF_INET) {
   sa_in = (struct sockaddr_in *)&h->ss;
   sa_in->sin_len = sizeof(struct sockaddr_in);
   sa_in->sin_addr.s_addr = ((struct sockaddr_in *)
       res->ai_addr)->sin_addr.s_addr;
  } else {
   sa_in6 = (struct sockaddr_in6 *)&h->ss;
   sa_in6->sin6_len = sizeof(struct sockaddr_in6);
   memcpy(&sa_in6->sin6_addr, &((struct sockaddr_in6 *)
       res->ai_addr)->sin6_addr, sizeof(struct in6_addr));
  }

  TAILQ_INSERT_HEAD(hn, h, next);
  cnt++;
 }
 freeaddrinfo(res0);
 return (cnt);
}
