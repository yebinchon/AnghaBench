
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct bio {scalar_t__ bio_classifier1; } ;



__attribute__((used)) static inline u_long
g_sched_classify(struct bio *bp)
{


 return ((u_long)bp->bio_classifier1);
}
