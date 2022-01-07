
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct test_ctx {int nsent; int * fds; int name; TYPE_2__* test_pkts; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {TYPE_1__* tss; } ;
struct TYPE_3__ {int sent; } ;


 int clock_gettime (int ,int *) ;
 int err (int,char*,int ,char const*,int ) ;
 int errx (int,char*,int ,char const*,int ) ;
 int get_clock_type (struct test_ctx*) ;
 scalar_t__ send (int ,TYPE_2__*,size_t,int ) ;

__attribute__((used)) static void
send_pkt(struct test_ctx *tcp, int pnum, int fdidx, const char *face)
{
    ssize_t r;
    size_t slen;

    slen = sizeof(tcp->test_pkts[pnum]);
    clock_gettime(get_clock_type(tcp), &tcp->test_pkts[pnum].tss[fdidx].sent);
    r = send(tcp->fds[fdidx], &tcp->test_pkts[pnum], slen, 0);
    if (r < 0) {
        err(1, "%s: %s: send(%d)", tcp->name, face, tcp->fds[fdidx]);
    }
    if (r < (ssize_t)slen) {
        errx(1, "%s: %s: send(%d): short send", tcp->name, face,
          tcp->fds[fdidx]);
    }
    tcp->nsent += 1;
}
