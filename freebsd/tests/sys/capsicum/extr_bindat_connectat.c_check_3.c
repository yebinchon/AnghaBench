
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ (* socket_fun ) (int,struct sockaddr const*,int) ;
typedef int cap_rights_t ;


 int AF_INET ;
 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_ERRNO (int ,int) ;
 int EAFNOSUPPORT ;
 int ENOTCAPABLE ;
 int SOCK_STREAM ;
 scalar_t__ cap_rights_limit (int,int *) ;
 int * cap_rights_remove (int *,int *) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
check_3(socket_fun f, int s, const struct sockaddr_in *name,
    cap_rights_t *rights, cap_rights_t *sub_rights)
{

 ATF_REQUIRE((s = socket(AF_INET, SOCK_STREAM, 0)) >= 0);
 ATF_REQUIRE(cap_rights_limit(s, rights) >= 0);
 ATF_REQUIRE_ERRNO(EAFNOSUPPORT,
     f(s, (const struct sockaddr *)name,
         sizeof(struct sockaddr_in)) < 0);
 ATF_REQUIRE(cap_rights_limit(s,
                 cap_rights_remove(rights, sub_rights)) >= 0);
 ATF_REQUIRE_ERRNO(ENOTCAPABLE,
     f(s, (const struct sockaddr *)name,
         sizeof(struct sockaddr_in)) < 0);
}
