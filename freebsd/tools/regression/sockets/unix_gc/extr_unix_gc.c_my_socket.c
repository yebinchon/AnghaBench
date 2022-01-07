
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,int ) ;
 int socket (int,int,int) ;
 int test ;

__attribute__((used)) static int
my_socket(int domain, int type, int proto)
{
 int sock;

 sock = socket(domain, type, proto);
 if (sock < 0)
  err(-1, "%s: socket", test);
 return (sock);
}
