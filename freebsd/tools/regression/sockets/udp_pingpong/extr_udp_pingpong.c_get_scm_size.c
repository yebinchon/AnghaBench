
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int dummy; } ;
struct test_ctx {int ts_type; } ;
struct bintime {int dummy; } ;
 int abort () ;

__attribute__((used)) static size_t
get_scm_size(struct test_ctx *tcp)
{
    switch (tcp->ts_type) {
    case 129:
    case 130:
        return (sizeof(struct timeval));

    case 133:
    case 128:
        return (sizeof(struct bintime));

    case 131:
    case 132:
        return (sizeof(struct timespec));
    }
    abort();
}
