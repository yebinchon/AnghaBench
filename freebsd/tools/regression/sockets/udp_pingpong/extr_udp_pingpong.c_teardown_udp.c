
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_ctx {int * fds; } ;


 int close (int ) ;

__attribute__((used)) static void
teardown_udp(struct test_ctx *tcp)
{

    close(tcp->fds[0]);
    close(tcp->fds[1]);
}
