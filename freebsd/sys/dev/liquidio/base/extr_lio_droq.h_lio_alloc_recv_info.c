
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lio_recv_pkt {int dummy; } ;
struct lio_recv_info {int * rsvd; struct lio_recv_pkt* recv_pkt; } ;


 int LIO_RECV_INFO_SIZE ;
 int LIO_RECV_PKT_SIZE ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * malloc (int,int ,int) ;

__attribute__((used)) static inline struct lio_recv_info *
lio_alloc_recv_info(int extra_bytes)
{
 struct lio_recv_info *recv_info;
 uint8_t *buf;

 buf = malloc(LIO_RECV_PKT_SIZE + LIO_RECV_INFO_SIZE +
       extra_bytes, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (buf == ((void*)0))
  return (((void*)0));

 recv_info = (struct lio_recv_info *)buf;
 recv_info->recv_pkt = (struct lio_recv_pkt *)(buf + LIO_RECV_INFO_SIZE);
 recv_info->rsvd = ((void*)0);
 if (extra_bytes)
  recv_info->rsvd = buf + LIO_RECV_INFO_SIZE + LIO_RECV_PKT_SIZE;

 return (recv_info);
}
