
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;





__attribute__((used)) static void *
sa_rawaddr(struct sockaddr *sa, int *nbytes) {
 void *p;
 int len;

 switch (sa->sa_family) {
 case 129:
  len = sizeof(((struct sockaddr_in *)sa)->sin_addr);
  p = &((struct sockaddr_in *)sa)->sin_addr;
  break;
 case 128:
  len = sizeof(((struct sockaddr_in6 *)sa)->sin6_addr);
  p = &((struct sockaddr_in6 *)sa)->sin6_addr;
  break;
 default:
  p = ((void*)0);
  len = 0;
 }

 if (nbytes != ((void*)0))
  *nbytes = len;
 return (p);
}
