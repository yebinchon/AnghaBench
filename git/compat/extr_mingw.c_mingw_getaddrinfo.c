
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;


 int ensure_socket_initialization () ;
 int getaddrinfo (char const*,char const*,struct addrinfo const*,struct addrinfo**) ;

int mingw_getaddrinfo(const char *node, const char *service,
        const struct addrinfo *hints, struct addrinfo **res)
{
 ensure_socket_initialization();
 return getaddrinfo(node, service, hints, res);
}
