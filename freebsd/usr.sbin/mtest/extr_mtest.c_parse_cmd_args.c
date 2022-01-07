
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {void* sa_family; } ;
struct addrinfo {int ai_family; int ai_addrlen; int ai_addr; TYPE_1__ sa; int ai_socktype; int ai_flags; } ;
typedef struct addrinfo sockunion_t ;


 void* AF_UNSPEC ;
 int AI_NUMERICHOST ;
 int EINVAL ;
 int PF_UNSPEC ;
 int SOCK_DGRAM ;
 int assert (int ) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ if_nametoindex (char const*) ;
 int memcpy (struct addrinfo*,int ,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int warnx (char*,int ) ;

__attribute__((used)) static uint32_t
parse_cmd_args(sockunion_t *psu, sockunion_t *psu2,
    const char *str1, const char *str2, const char *str3)
{
 struct addrinfo hints;
 struct addrinfo *res;
 uint32_t ifindex;
 int af, error;

 assert(psu != ((void*)0));
 assert(str1 != ((void*)0));
 assert(str2 != ((void*)0));

 af = AF_UNSPEC;

 ifindex = if_nametoindex(str2);
 if (ifindex == 0)
  return (0);

 memset(&hints, 0, sizeof(struct addrinfo));
 hints.ai_flags = AI_NUMERICHOST;
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_DGRAM;

 memset(psu, 0, sizeof(sockunion_t));
 psu->sa.sa_family = AF_UNSPEC;

 error = getaddrinfo(str1, "0", &hints, &res);
 if (error) {
  warnx("getaddrinfo: %s", gai_strerror(error));
  return (0);
 }
 assert(res != ((void*)0));
 af = res->ai_family;
 memcpy(psu, res->ai_addr, res->ai_addrlen);
 freeaddrinfo(res);


 if (psu2 != ((void*)0) && str3 != ((void*)0) && *str3 != '\0') {
  memset(psu2, 0, sizeof(sockunion_t));
  psu2->sa.sa_family = AF_UNSPEC;


  hints.ai_family = af;
  error = getaddrinfo(str3, "0", &hints, &res);
  if (error) {
   warnx("getaddrinfo: %s", gai_strerror(error));
   ifindex = 0;
  } else {
   if (af != res->ai_family) {
    errno = EINVAL;
    ifindex = 0;
   }
   memcpy(psu2, res->ai_addr, res->ai_addrlen);
   freeaddrinfo(res);
  }
 }

 return (ifindex);
}
