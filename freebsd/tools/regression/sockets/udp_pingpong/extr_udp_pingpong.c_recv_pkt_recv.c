
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct test_ctx {int * fds; int name; } ;
typedef scalar_t__ ssize_t ;


 int clock_gettime (int ,struct timespec*) ;
 int err (int,char*,int ,char const*,int ) ;
 int errx (int,char*,int ,char const*,int ) ;
 int get_clock_type (struct test_ctx*) ;
 scalar_t__ recv (int ,void*,size_t,int ) ;

__attribute__((used)) static void
recv_pkt_recv(struct test_ctx *tcp, int fdidx, const char *face, void *buf,
  size_t rlen, struct timespec *tp)
{
    ssize_t rval;

    rval = recv(tcp->fds[fdidx], buf, rlen, 0);
    clock_gettime(get_clock_type(tcp), tp);
    if (rval < 0) {
        err(1, "%s: %s: recv(%d)", tcp->name, face, tcp->fds[fdidx]);
    }
    if (rval < (ssize_t)rlen) {
        errx(1, "%s: %s: recv(%d): short recv", tcp->name, face,
            tcp->fds[fdidx]);
    }
}
