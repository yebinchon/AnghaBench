
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_un {char* sun_path; } ;
struct sockaddr_storage {int ss_family; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in6 {int sin6_port; TYPE_1__ sin6_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
typedef int buffer2 ;





 int IN6_IS_ADDR_UNSPECIFIED (TYPE_1__*) ;
 int INADDR_ANY ;
 int INET6_ADDRSTRLEN ;
 int * inet_ntop (int const,TYPE_1__*,char*,int) ;
 int ntohs (int ) ;
 int snprintf (char*,int,char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static char *
addr_to_string(struct sockaddr_storage *ss, char *buffer, int buflen)
{
 char buffer2[INET6_ADDRSTRLEN];
 struct sockaddr_in6 *sin6;
 struct sockaddr_in *sin;
 struct sockaddr_un *sun;

 switch (ss->ss_family) {
 case 128:
  sun = (struct sockaddr_un *)ss;
  if (strlen(sun->sun_path) == 0)
   strlcpy(buffer, "-", buflen);
  else
   strlcpy(buffer, sun->sun_path, buflen);
  break;

 case 130:
  sin = (struct sockaddr_in *)ss;
  if (sin->sin_addr.s_addr == INADDR_ANY)
   snprintf(buffer, buflen, "%s:%d", "*",
       ntohs(sin->sin_port));
  else if (inet_ntop(130, &sin->sin_addr, buffer2,
      sizeof(buffer2)) != ((void*)0))
   snprintf(buffer, buflen, "%s:%d", buffer2,
              ntohs(sin->sin_port));
  break;

 case 129:
  sin6 = (struct sockaddr_in6 *)ss;
  if (IN6_IS_ADDR_UNSPECIFIED(&sin6->sin6_addr))
   snprintf(buffer, buflen, "%s.%d", "*",
       ntohs(sin6->sin6_port));
  else if (inet_ntop(129, &sin6->sin6_addr, buffer2,
      sizeof(buffer2)) != ((void*)0))
   snprintf(buffer, buflen, "%s.%d", buffer2,
       ntohs(sin6->sin6_port));
  else
   strlcpy(buffer, "-", buflen);
  break;

 default:
  strlcpy(buffer, "", buflen);
  break;
 }
 return buffer;
}
