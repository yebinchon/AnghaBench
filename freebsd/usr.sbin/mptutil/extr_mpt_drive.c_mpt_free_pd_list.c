
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_drive_list {int ndrives; struct mpt_drive_list** drives; } ;


 int free (struct mpt_drive_list*) ;

void
mpt_free_pd_list(struct mpt_drive_list *list)
{
 int i;

 for (i = 0; i < list->ndrives; i++)
  free(list->drives[i]);
 free(list);
}
