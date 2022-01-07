
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int dummy; } ;
struct bio {int dummy; } ;


 int CTR1 (int,char*,struct bio*) ;
 int CTRSTACK (int,struct stack*,int) ;
 int KTR_COMPILE ;
 int KTR_GEOM ;
 int biozone ;
 int ktr_mask ;
 int stack_save (struct stack*) ;
 int uma_zfree (int ,struct bio*) ;

void
g_destroy_bio(struct bio *bp)
{
 uma_zfree(biozone, bp);
}
