
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TT_BINTIME ;
 int TT_MONOTONIC ;
 int TT_REALTIME ;
 int TT_REALTIME_MICRO ;
 int TT_TIMESTAMP ;
 int TT_TS_BINTIME ;
 int exit (int ) ;
 int printf (char*) ;
 int srandomdev () ;
 int test_run (int ,int,int,char*) ;

int
main(void)
{
    int i;

    srandomdev();

    for (i = 0; i < 2; i++) {
        test_run(0, i, 0, "send()/recv()");
        printf("OK\n");
        test_run(TT_TIMESTAMP, i, 1,
          "send()/recvmsg(), setsockopt(SO_TIMESTAMP, 1)");
        printf("OK\n");
        if (i == 0) {
            test_run(TT_BINTIME, i, 1,
              "send()/recvmsg(), setsockopt(SO_BINTIME, 1)");
            printf("OK\n");
        }
        test_run(TT_REALTIME_MICRO, i, 1,
          "send()/recvmsg(), setsockopt(SO_TS_CLOCK, SO_TS_REALTIME_MICRO)");
        printf("OK\n");
        test_run(TT_TS_BINTIME, i, 1,
          "send()/recvmsg(), setsockopt(SO_TS_CLOCK, SO_TS_BINTIME)");
        printf("OK\n");
        test_run(TT_REALTIME, i, 1,
          "send()/recvmsg(), setsockopt(SO_TS_CLOCK, SO_TS_REALTIME)");
        printf("OK\n");
        test_run(TT_MONOTONIC, i, 1,
          "send()/recvmsg(), setsockopt(SO_TS_CLOCK, SO_TS_MONOTONIC)");
        printf("OK\n");
    }
    exit(0);
}
