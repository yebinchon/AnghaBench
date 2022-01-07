
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct intr_irqsrc {size_t isrc_index; int * isrc_count; } ;


 size_t atomic_fetchadd_int (int *,int) ;
 int * intrcnt ;
 int intrcnt_index ;
 int isrc_update_name (struct intr_irqsrc*,int *) ;

__attribute__((used)) static void
isrc_setup_counters(struct intr_irqsrc *isrc)
{
 u_int index;





 index = atomic_fetchadd_int(&intrcnt_index, 2);
 isrc->isrc_index = index;
 isrc->isrc_count = &intrcnt[index];
 isrc_update_name(isrc, ((void*)0));
}
