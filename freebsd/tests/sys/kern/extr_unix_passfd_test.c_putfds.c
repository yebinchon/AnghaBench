
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmsghdr {int cmsg_type; int cmsg_level; int cmsg_len; } ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 int CMSG_LEN (int) ;
 int SCM_RIGHTS ;
 int SOL_SOCKET ;

__attribute__((used)) static void
putfds(char *buf, int fd, int nfds)
{
 struct cmsghdr *cm;
 int *fdp, i;

 cm = (struct cmsghdr *)buf;
 cm->cmsg_len = CMSG_LEN(nfds * sizeof(int));
 cm->cmsg_level = SOL_SOCKET;
 cm->cmsg_type = SCM_RIGHTS;
 for (fdp = (int *)CMSG_DATA(cm), i = 0; i < nfds; i++)
  *fdp++ = fd;
}
