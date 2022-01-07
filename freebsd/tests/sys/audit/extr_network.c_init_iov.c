
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {char* iov_base; int iov_len; } ;



__attribute__((used)) static void
init_iov(struct iovec *io, char msgbuf[], int datalen)
{
 io->iov_base = msgbuf;
 io->iov_len = datalen;
}
