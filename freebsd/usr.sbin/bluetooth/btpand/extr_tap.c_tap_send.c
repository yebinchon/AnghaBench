
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iovec {void* iov_len; int iov_base; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {void* len; int ptr; int type; int src; int dst; } ;
typedef TYPE_1__ packet_t ;
struct TYPE_6__ {int fd; } ;
typedef TYPE_2__ channel_t ;


 void* ETHER_ADDR_LEN ;
 void* ETHER_TYPE_LEN ;
 int __arraycount (struct iovec*) ;
 int assert (int) ;
 scalar_t__ writev (int ,struct iovec*,int ) ;

__attribute__((used)) static bool
tap_send(channel_t *chan, packet_t *pkt)
{
 struct iovec iov[4];
 ssize_t nw;

 iov[0].iov_base = pkt->dst;
 iov[0].iov_len = ETHER_ADDR_LEN;
 iov[1].iov_base = pkt->src;
 iov[1].iov_len = ETHER_ADDR_LEN;
 iov[2].iov_base = pkt->type;
 iov[2].iov_len = ETHER_TYPE_LEN;
 iov[3].iov_base = pkt->ptr;
 iov[3].iov_len = pkt->len;


 nw = writev(chan->fd, iov, __arraycount(iov));
 assert(nw > 0);

 return 1;
}
