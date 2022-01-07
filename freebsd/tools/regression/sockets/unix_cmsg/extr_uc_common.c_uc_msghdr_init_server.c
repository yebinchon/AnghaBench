
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct msghdr {size_t msg_controllen; TYPE_1__* msg_iov; } ;
struct iovec {int dummy; } ;
struct TYPE_2__ {size_t iov_len; } ;


 int uc_dbgmsg (char*,size_t) ;
 int uc_msghdr_init_generic (struct msghdr*,struct iovec*,void*) ;

void
uc_msghdr_init_server(struct msghdr *msghdr, struct iovec *iov,
    void *cmsg_data, size_t cmsg_size)
{
 uc_msghdr_init_generic(msghdr, iov, cmsg_data);
 msghdr->msg_controllen = cmsg_size;
 uc_dbgmsg("init: data size %zu", msghdr->msg_iov != ((void*)0) ?
     msghdr->msg_iov->iov_len : (size_t)0);
 uc_dbgmsg("init: msghdr.msg_controllen %u",
     (u_int)msghdr->msg_controllen);
}
