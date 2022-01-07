
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct msghdr {scalar_t__ msg_controllen; TYPE_1__* msg_iov; } ;
struct cmsghdr {scalar_t__ cmsg_len; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {int buf_send; int buf_recv; } ;
struct TYPE_6__ {TYPE_2__ ipc_msg; int send_data_flag; } ;
struct TYPE_4__ {size_t iov_len; } ;


 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 int MSG_WAITALL ;
 scalar_t__ memcmp (int ,int ,size_t) ;
 scalar_t__ recvmsg (int,struct msghdr*,int ) ;
 TYPE_3__ uc_cfg ;
 int uc_dbgmsg (char*,scalar_t__) ;
 int uc_logmsg (char*) ;
 int uc_logmsgx (char*,...) ;
 scalar_t__ uc_sync_recv () ;

int
uc_message_recv(int fd, struct msghdr *msghdr)
{
 const struct cmsghdr *cmsghdr;
 size_t size;
 ssize_t ssize;

 if (!uc_cfg.send_data_flag)
  if (uc_sync_recv() < 0)
   return (-1);

 size = msghdr->msg_iov != ((void*)0) ? msghdr->msg_iov->iov_len : 0;
 ssize = recvmsg(fd, msghdr, MSG_WAITALL);
 if (ssize < 0) {
  uc_logmsg("message_recv: recvmsg");
  return (-1);
 }
 if ((size_t)ssize != size) {
  uc_logmsgx("message_recv: recvmsg: received %zd of %zu bytes",
      ssize, size);
  return (-1);
 }

 uc_dbgmsg("recv: data size %zd", ssize);
 uc_dbgmsg("recv: msghdr.msg_controllen %u",
     (u_int)msghdr->msg_controllen);
 cmsghdr = CMSG_FIRSTHDR(msghdr);
 if (cmsghdr != ((void*)0))
  uc_dbgmsg("recv: cmsghdr.cmsg_len %u",
      (u_int)cmsghdr->cmsg_len);

 if (memcmp(uc_cfg.ipc_msg.buf_recv, uc_cfg.ipc_msg.buf_send, size) != 0) {
  uc_logmsgx("message_recv: received message has wrong content");
  return (-1);
 }

 return (0);
}
