
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int bzero (struct bio*,int) ;

void
g_reset_bio(struct bio *bp)
{

 bzero(bp, sizeof(*bp));
}
