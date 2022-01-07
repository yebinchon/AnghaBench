
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;


 int const AF_INET ;
 int const AF_INET6 ;

__attribute__((used)) static __inline int
af2socklen(const int af)
{
 return (-1);
}
