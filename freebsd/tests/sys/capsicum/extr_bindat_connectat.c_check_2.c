
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ (* socket_fun ) (int,struct sockaddr const*,int) ;


 int ATF_REQUIRE_ERRNO (int ,int) ;
 int ECAPMODE ;

__attribute__((used)) static void
check_2(socket_fun f, int s, const struct sockaddr_in *name)
{

 ATF_REQUIRE_ERRNO(ECAPMODE,
     f(s, (const struct sockaddr *)name,
         sizeof(struct sockaddr_in)) < 0);
}
