
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int ENXIO ;
 int biofinish (struct bio*,int *,int ) ;

__attribute__((used)) static void
dead_strategy(struct bio *bp)
{

 biofinish(bp, ((void*)0), ENXIO);
}
