
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gap_stats {int start; } ;


 int SWAPBLK_NONE ;
 int bzero (struct gap_stats*,int) ;

__attribute__((used)) static inline void
init_gap_stats(struct gap_stats *stats)
{

 bzero(stats, sizeof(*stats));
 stats->start = SWAPBLK_NONE;
}
