
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int PF_UNIX ;
 int SOCK_STREAM ;
 int errno ;
 int socketpair (int ,int ,int ,int*) ;
 int strerror (int ) ;

__attribute__((used)) static void
domainsocketpair(int *fdp)
{

 ATF_REQUIRE_MSG(socketpair(PF_UNIX, SOCK_STREAM, 0, fdp) != -1,
     "socketpair(PF_UNIX, SOCK_STREAM) failed: %s", strerror(errno));
}
