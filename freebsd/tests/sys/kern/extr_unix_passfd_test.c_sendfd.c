
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ch ;


 int ATF_REQUIRE_MSG (int,char*,size_t,int,int ) ;
 int errno ;
 size_t sendfd_payload (int,int,char*,int) ;
 int strerror (int ) ;

__attribute__((used)) static void
sendfd(int sockfd, int send_fd)
{
 size_t len;
 char ch;

 ch = 0;
 len = sendfd_payload(sockfd, send_fd, &ch, sizeof(ch));
 ATF_REQUIRE_MSG(len == sizeof(ch),
     "sendmsg: %zu bytes sent; expected %zu; %s", len, sizeof(ch),
     strerror(errno));
}
