
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ch ;


 int CMSG_SPACE (int) ;
 int recvfd_payload (int,int*,char*,int,int ) ;

__attribute__((used)) static void
recvfd(int sockfd, int *recv_fd)
{
 char ch = 0;

 recvfd_payload(sockfd, recv_fd, &ch, sizeof(ch),
     CMSG_SPACE(sizeof(int)));
}
