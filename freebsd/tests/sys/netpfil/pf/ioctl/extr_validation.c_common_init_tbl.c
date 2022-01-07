
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {scalar_t__ pfrt_fback; scalar_t__ pfrt_flags; int pfrt_name; int pfrt_anchor; } ;


 int bzero (struct pfr_table*,int) ;
 int strcpy (int ,char*) ;

void
common_init_tbl(struct pfr_table *tbl)
{
 bzero(tbl, sizeof(struct pfr_table));
 strcpy(tbl->pfrt_anchor, "anchor");
 strcpy(tbl->pfrt_name, "name");
 tbl->pfrt_flags = 0;
 tbl->pfrt_fback = 0;
}
