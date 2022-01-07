
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;


 int ensure_socket_initialization () ;
 struct hostent* gethostbyname (char const*) ;

struct hostent *mingw_gethostbyname(const char *host)
{
 ensure_socket_initialization();
 return gethostbyname(host);
}
