
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int one ;


 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEPORT_LB ;
 int errno ;
 int setsockopt (int,int ,int ,size_t*,int) ;
 int socket (int,int,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int
lb_listen_socket(int domain, int flags)
{
 size_t one;
 int error, sd;

 sd = socket(domain, SOCK_STREAM | flags, 0);
 ATF_REQUIRE_MSG(sd >= 0, "socket() failed: %s", strerror(errno));

 one = 1;
 error = setsockopt(sd, SOL_SOCKET, SO_REUSEPORT_LB, &one, sizeof(one));
 ATF_REQUIRE_MSG(error == 0, "setsockopt(SO_REUSEPORT_LB) failed: %s",
     strerror(errno));

 return (sd);
}
