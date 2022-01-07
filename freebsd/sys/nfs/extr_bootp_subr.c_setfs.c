
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_len; int sin_family; int sin_addr; } ;
struct in_addr {int dummy; } ;


 int AF_INET ;
 int MNAMELEN ;
 int bcopy (struct in_addr const*,int *,int) ;
 scalar_t__ getip (char**,int *) ;
 int strlcpy (char*,char*,int ) ;

__attribute__((used)) static int
setfs(struct sockaddr_in *addr, char *path, char *p,
    const struct in_addr *siaddr)
{

 if (getip(&p, &addr->sin_addr) == 0) {
  if (siaddr != ((void*)0) && *p == '/')
   bcopy(siaddr, &addr->sin_addr, sizeof(struct in_addr));
  else
   return 0;
 } else {
  if (*p != ':')
   return 0;
  p++;
 }

 addr->sin_len = sizeof(struct sockaddr_in);
 addr->sin_family = AF_INET;

 strlcpy(path, p, MNAMELEN);
 return 1;
}
