
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;




 int FALSE ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static int
nlm_compare_addr(const struct sockaddr *a, const struct sockaddr *b)
{
 const struct sockaddr_in *a4, *b4;




 if (a->sa_family != b->sa_family)
  return (FALSE);

 switch (a->sa_family) {
 case 129:
  a4 = (const struct sockaddr_in *) a;
  b4 = (const struct sockaddr_in *) b;
  return !memcmp(&a4->sin_addr, &b4->sin_addr,
      sizeof(a4->sin_addr));







 }

 return (0);
}
