
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int dummy; } ;
struct msghdr {int msg_iovlen; struct iovec* msg_iov; scalar_t__ msg_namelen; struct sockaddr_un* msg_name; } ;
struct iovec {int dummy; } ;
typedef scalar_t__ socklen_t ;


 int bzero (struct msghdr*,int) ;

__attribute__((used)) static void
init_msghdr(struct msghdr *hdrbuf, struct iovec *io, struct sockaddr_un *addr)
{
 socklen_t length;

 bzero(hdrbuf, sizeof(*hdrbuf));
 length = (socklen_t)sizeof(struct sockaddr_un);
 hdrbuf->msg_name = addr;
 hdrbuf->msg_namelen = length;
 hdrbuf->msg_iov = io;
 hdrbuf->msg_iovlen = 1;
}
