
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpt_drive_list {int ndrives; TYPE_1__** drives; } ;
typedef scalar_t__ U8 ;
struct TYPE_2__ {scalar_t__ PhysDiskNum; } ;


 int errno ;
 TYPE_1__* mpt_pd_info (int,scalar_t__,int *) ;

__attribute__((used)) static int
mpt_pd_insert(int fd, struct mpt_drive_list *list, U8 PhysDiskNum)
{
 int i, j;





 for (i = 0; i < list->ndrives; i++) {
  if (list->drives[i]->PhysDiskNum == PhysDiskNum)
   return (0);
  if (list->drives[i]->PhysDiskNum > PhysDiskNum)
   break;
 }





 for (j = list->ndrives - 1; j >= i; j--)
  list->drives[j + 1] = list->drives[j];
 list->drives[i] = mpt_pd_info(fd, PhysDiskNum, ((void*)0));
 if (list->drives[i] == ((void*)0))
  return (errno);
 list->ndrives++;
 return (0);
}
