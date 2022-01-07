
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct test_pkt {size_t pnum; TYPE_3__* tss; int data; } ;
struct test_ctx {scalar_t__ use_recvmsg; int nrecvd; TYPE_1__* test_pkts; int * fds; int name; TYPE_2__* pfds; } ;
typedef int recv_buf ;
struct TYPE_6__ {int recvd; } ;
struct TYPE_5__ {scalar_t__ revents; } ;
struct TYPE_4__ {scalar_t__ lost; int tss; } ;


 size_t NPKTS ;
 int PDATA (struct test_ctx*,size_t) ;
 int PKT_SIZE ;
 scalar_t__ POLLIN ;
 int err (int,char*,int ,char const*,int ) ;
 int errx (int,char*,int ,char const*,int ,...) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (int ,TYPE_3__*,int) ;
 int poll (TYPE_2__*,int,int) ;
 int recv_pkt_recv (struct test_ctx*,int,char const*,struct test_pkt*,size_t,int *) ;
 int recv_pkt_recvmsg (struct test_ctx*,int,char const*,struct test_pkt*,size_t,int *) ;

__attribute__((used)) static int
recv_pkt(struct test_ctx *tcp, int fdidx, const char *face, int tout)
{
    int pr;
    struct test_pkt recv_buf;
    size_t rlen;

    pr = poll(&tcp->pfds[fdidx], 1, tout);
    if (pr < 0) {
        err(1, "%s: %s: poll(%d)", tcp->name, face, tcp->fds[fdidx]);
    }
    if (pr == 0) {
        return (-1);
    }
    if(tcp->pfds[fdidx].revents != POLLIN) {
        errx(1, "%s: %s: poll(%d): unexpected result", tcp->name, face,
          tcp->fds[fdidx]);
    }
    rlen = sizeof(recv_buf);
    if (tcp->use_recvmsg == 0) {
        recv_pkt_recv(tcp, fdidx, face, &recv_buf, rlen,
          &recv_buf.tss[fdidx].recvd);
    } else {
        recv_pkt_recvmsg(tcp, fdidx, face, &recv_buf, rlen,
          &recv_buf.tss[fdidx].recvd);
    }
    if (recv_buf.pnum < 0 || recv_buf.pnum >= NPKTS ||
      memcmp(recv_buf.data, PDATA(tcp, recv_buf.pnum), PKT_SIZE) != 0) {
        errx(1, "%s: %s: recv(%d): corrupted data, packet %d", tcp->name,
          face, tcp->fds[fdidx], recv_buf.pnum);
    }
    tcp->nrecvd += 1;
    memcpy(tcp->test_pkts[recv_buf.pnum].tss, recv_buf.tss,
      sizeof(recv_buf.tss));
    tcp->test_pkts[recv_buf.pnum].lost = 0;
    return (recv_buf.pnum);
}
