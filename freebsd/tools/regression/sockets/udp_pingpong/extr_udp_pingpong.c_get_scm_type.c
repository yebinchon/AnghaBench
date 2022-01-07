
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_ctx {int ts_type; } ;


 int SCM_BINTIME ;
 int SCM_MONOTONIC ;
 int SCM_REALTIME ;
 int SCM_TIMESTAMP ;






 int abort () ;

__attribute__((used)) static int
get_scm_type(struct test_ctx *tcp)
{
    switch (tcp->ts_type) {
    case 129:
    case 130:
        return (SCM_TIMESTAMP);

    case 133:
    case 128:
        return (SCM_BINTIME);

    case 131:
        return (SCM_REALTIME);

    case 132:
        return (SCM_MONOTONIC);
    }
    abort();
}
