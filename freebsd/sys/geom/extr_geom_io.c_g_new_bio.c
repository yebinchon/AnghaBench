
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
 int M_NOWAIT ;
 int M_ZERO ;
 int biozone ;
 int ktr_mask ;
 int stack_save (struct stack*) ;
 struct bio* uma_zalloc (int ,int) ;

struct bio *
g_new_bio(void)
{
 struct bio *bp;

 bp = uma_zalloc(biozone, M_NOWAIT | M_ZERO);
 return (bp);
}
