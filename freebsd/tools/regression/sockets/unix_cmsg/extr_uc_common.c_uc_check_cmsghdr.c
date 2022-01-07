
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct cmsghdr {scalar_t__ cmsg_level; int cmsg_type; int cmsg_len; } ;


 int CMSG_LEN (size_t) ;
 scalar_t__ SOL_SOCKET ;
 int uc_logmsgx (char*,...) ;

int
uc_check_cmsghdr(const struct cmsghdr *cmsghdr, int type, size_t size)
{
 if (cmsghdr == ((void*)0)) {
  uc_logmsgx("cmsghdr is NULL");
  return (-1);
 }
 if (cmsghdr->cmsg_level != SOL_SOCKET) {
  uc_logmsgx("cmsghdr.cmsg_level %d != SOL_SOCKET",
      cmsghdr->cmsg_level);
  return (-1);
 }
 if (cmsghdr->cmsg_type != type) {
  uc_logmsgx("cmsghdr.cmsg_type %d != %d",
      cmsghdr->cmsg_type, type);
  return (-1);
 }
 if (cmsghdr->cmsg_len != CMSG_LEN(size)) {
  uc_logmsgx("cmsghdr.cmsg_len %u != %zu",
      (u_int)cmsghdr->cmsg_len, CMSG_LEN(size));
  return (-1);
 }
 return (0);
}
