
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {char* msg_control; size_t msg_controllen; int msg_iovlen; struct iovec* msg_iov; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; scalar_t__ cmsg_len; } ;
typedef int ssize_t ;
typedef int msghdr ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_MSG (int,char*,...) ;
 int CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 scalar_t__ CMSG_LEN (int) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 scalar_t__ SCM_CREDS ;
 scalar_t__ SCM_RIGHTS ;
 scalar_t__ SOL_SOCKET ;
 int bzero (struct msghdr*,int) ;
 int errno ;
 int localcreds (int) ;
 char* malloc (size_t) ;
 int memcpy (int*,int ,int) ;
 int recvmsg (int,struct msghdr*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void
recvfd_payload(int sockfd, int *recv_fd, void *buf, size_t buflen,
    size_t cmsgsz)
{
 struct cmsghdr *cmsghdr;
 struct msghdr msghdr;
 struct iovec iovec;
 char *message;
 ssize_t len;
 bool foundcreds;

 bzero(&msghdr, sizeof(msghdr));
 message = malloc(cmsgsz);
 ATF_REQUIRE(message != ((void*)0));

 msghdr.msg_control = message;
 msghdr.msg_controllen = cmsgsz;

 iovec.iov_base = buf;
 iovec.iov_len = buflen;

 msghdr.msg_iov = &iovec;
 msghdr.msg_iovlen = 1;

 len = recvmsg(sockfd, &msghdr, 0);
 ATF_REQUIRE_MSG(len != -1, "recvmsg failed: %s", strerror(errno));
 ATF_REQUIRE_MSG((size_t)len == buflen,
     "recvmsg: %zd bytes received; expected %zd", len, buflen);

 cmsghdr = CMSG_FIRSTHDR(&msghdr);
 ATF_REQUIRE_MSG(cmsghdr != ((void*)0),
     "recvmsg: did not receive control message");
 foundcreds = 0;
 *recv_fd = -1;
 for (; cmsghdr != ((void*)0); cmsghdr = CMSG_NXTHDR(&msghdr, cmsghdr)) {
  if (cmsghdr->cmsg_level == SOL_SOCKET &&
      cmsghdr->cmsg_type == SCM_RIGHTS &&
      cmsghdr->cmsg_len == CMSG_LEN(sizeof(int))) {
   memcpy(recv_fd, CMSG_DATA(cmsghdr), sizeof(int));
   ATF_REQUIRE(*recv_fd != -1);
  } else if (cmsghdr->cmsg_level == SOL_SOCKET &&
      cmsghdr->cmsg_type == SCM_CREDS)
   foundcreds = 1;
 }
 ATF_REQUIRE_MSG(*recv_fd != -1,
     "recvmsg: did not receive single-fd message");
 ATF_REQUIRE_MSG(!localcreds(sockfd) || foundcreds,
     "recvmsg: expected credentials were not received");
}
