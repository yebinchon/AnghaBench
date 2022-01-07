
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct msghdr {int msg_namelen; int msg_iovlen; scalar_t__ msg_controllen; int * msg_control; scalar_t__ msg_flags; struct iovec* msg_iov; void* msg_name; } ;
struct iovec {int iov_len; void* iov_base; } ;
struct in6_pktinfo {int ipi6_ifindex; int ipi6_addr; } ;
struct cmsghdr {int cmsg_type; int cmsg_level; int cmsg_len; } ;
typedef int cmsgbuf ;
typedef void* caddr_t ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 int CMSG_LEN (int) ;
 scalar_t__ CMSG_SPACE (int) ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (int *) ;
 scalar_t__ IN6_IS_ADDR_MULTICAST (int *) ;
 int IPPROTO_IPV6 ;
 int IPV6_PKTINFO ;
 int errno ;
 int memset (int *,int ,int) ;
 scalar_t__ ripbuf ;
 int ripsock ;
 scalar_t__ sendmsg (int ,struct msghdr*,int ) ;
 int strerror (int) ;
 int trace (int,char*,int ) ;

__attribute__((used)) static int
sendpacket(struct sockaddr_in6 *sin6, int len)
{
 struct msghdr m;
 struct cmsghdr *cm;
 struct iovec iov[2];
 struct in6_pktinfo *pi;
 u_char cmsgbuf[256];
 int idx;
 struct sockaddr_in6 sincopy;


 sincopy = *sin6;
 sin6 = &sincopy;

 if (IN6_IS_ADDR_LINKLOCAL(&sin6->sin6_addr) ||
     IN6_IS_ADDR_MULTICAST(&sin6->sin6_addr))
  idx = sin6->sin6_scope_id;
 else
  idx = 0;

 m.msg_name = (caddr_t)sin6;
 m.msg_namelen = sizeof(*sin6);
 iov[0].iov_base = (caddr_t)ripbuf;
 iov[0].iov_len = len;
 m.msg_iov = iov;
 m.msg_iovlen = 1;
 m.msg_flags = 0;
 if (!idx) {
  m.msg_control = ((void*)0);
  m.msg_controllen = 0;
 } else {
  memset(cmsgbuf, 0, sizeof(cmsgbuf));
  cm = (struct cmsghdr *)(void *)cmsgbuf;
  m.msg_control = (caddr_t)cm;
  m.msg_controllen = CMSG_SPACE(sizeof(struct in6_pktinfo));

  cm->cmsg_len = CMSG_LEN(sizeof(struct in6_pktinfo));
  cm->cmsg_level = IPPROTO_IPV6;
  cm->cmsg_type = IPV6_PKTINFO;
  pi = (struct in6_pktinfo *)(void *)CMSG_DATA(cm);
  memset(&pi->ipi6_addr, 0, sizeof(pi->ipi6_addr));
  pi->ipi6_ifindex = idx;
 }

 if (sendmsg(ripsock, &m, 0 ) < 0) {
  trace(1, "sendmsg: %s\n", strerror(errno));
  return errno;
 }

 return 0;
}
