
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_EQ (int ,int) ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int PF_LOCAL ;
 int SOCK_SEQPACKET ;
 int fcntl (int,int ,int ) ;
 int socketpair (int ,int ,int ,int*) ;

__attribute__((used)) static void
do_socketpair_nonblocking(int *sv)
{
 int s;

 s = socketpair(PF_LOCAL, SOCK_SEQPACKET, 0, sv);
 ATF_REQUIRE_EQ(0, s);
 ATF_REQUIRE(sv[0] >= 0);
 ATF_REQUIRE(sv[1] >= 0);
 ATF_REQUIRE(sv[0] != sv[1]);
 ATF_REQUIRE(-1 != fcntl(sv[0], F_SETFL, O_NONBLOCK));
 ATF_REQUIRE(-1 != fcntl(sv[1], F_SETFL, O_NONBLOCK));
}
