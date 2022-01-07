
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ close (int ) ;
 int err (int,char*) ;
 int kqfd ;
 int success () ;
 int test_begin (char*) ;

void
test_kqueue_close(void)
{
    test_begin("close(kq)");
    if (close(kqfd) < 0)
        err(1, "close()");
    success();
}
