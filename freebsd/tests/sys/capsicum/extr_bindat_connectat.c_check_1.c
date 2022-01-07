
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ (* socket_fun ) (int,struct sockaddr const*,int) ;


 int AF_INET ;
 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_ERRNO (int ,int) ;
 int EAFNOSUPPORT ;
 int SOCK_STREAM ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
check_1(socket_fun f, int s, const struct sockaddr_in *name)
{

 ATF_REQUIRE((s = socket(AF_INET, SOCK_STREAM, 0)) >= 0);
 ATF_REQUIRE_ERRNO(EAFNOSUPPORT,
     f(s, (const struct sockaddr *)(name),
         sizeof(struct sockaddr_in)) < 0);
}
