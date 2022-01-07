
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_ctx {int ts_type; } ;
typedef int clockid_t ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;






 int abort () ;

__attribute__((used)) static clockid_t
get_clock_type(struct test_ctx *tcp)
{
    switch (tcp->ts_type) {
    case 129:
    case 133:
    case 130:
    case 128:
    case 131:
        return (CLOCK_REALTIME);

    case 132:
        return (CLOCK_MONOTONIC);
    }
    abort();
}
