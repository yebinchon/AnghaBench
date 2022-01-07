
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_3__ {int tv_sec; int tv_nsec; } ;


 int TAILQ_INIT (int *) ;
 int ra_timer ;
 TYPE_1__ tm_limit ;
 TYPE_1__ tm_max ;

void
rtadvd_timer_init(void)
{

 tm_limit.tv_sec = (-1) & ~((time_t)1 << ((sizeof(tm_max.tv_sec) * 8) - 1));
 tm_limit.tv_nsec = (-1) & ~((long)1 << ((sizeof(tm_max.tv_nsec) * 8) - 1));
 tm_max = tm_limit;
 TAILQ_INIT(&ra_timer);
}
