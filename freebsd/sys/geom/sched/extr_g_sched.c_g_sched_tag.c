
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bio_classifier1; } ;


 int curthread ;

__attribute__((used)) static int
g_sched_tag(void *arg, struct bio *bp)
{

 bp->bio_classifier1 = curthread;
 return (1);
}
