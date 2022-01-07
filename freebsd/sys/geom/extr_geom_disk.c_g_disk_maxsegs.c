
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {int dummy; } ;
struct bio {int dummy; } ;


 int PAGE_SIZE ;
 int g_disk_maxsize (struct disk*,struct bio*) ;

__attribute__((used)) static int
g_disk_maxsegs(struct disk *dp, struct bio *bp)
{
 return ((g_disk_maxsize(dp, bp) / PAGE_SIZE) + 1);
}
