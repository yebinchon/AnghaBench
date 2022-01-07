
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int ENXIO ;
 int g_io_deliver (struct bio*,int ) ;

__attribute__((used)) static void
g_sched_blackhole(struct bio *bp)
{

 g_io_deliver(bp, ENXIO);
}
