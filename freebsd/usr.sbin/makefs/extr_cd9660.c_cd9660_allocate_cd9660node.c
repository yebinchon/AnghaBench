
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * su_tail_data; int * rr_relocated; int rr_real_parent; int * isoExtAttributes; int * isoDirRecord; int * node; int * ptlast; int ptprev; int ptnext; int * dot_dot_record; int dot_record; int parent; int cn_children; } ;
typedef TYPE_1__ cd9660node ;


 int TAILQ_INIT (int *) ;
 TYPE_1__* ecalloc (int,int) ;

__attribute__((used)) static cd9660node *
cd9660_allocate_cd9660node(void)
{
 cd9660node *temp = ecalloc(1, sizeof(*temp));

 TAILQ_INIT(&temp->cn_children);
 temp->parent = temp->dot_record = temp->dot_dot_record = ((void*)0);
 temp->ptnext = temp->ptprev = temp->ptlast = ((void*)0);
 temp->node = ((void*)0);
 temp->isoDirRecord = ((void*)0);
 temp->isoExtAttributes = ((void*)0);
 temp->rr_real_parent = temp->rr_relocated = ((void*)0);
 temp->su_tail_data = ((void*)0);
 return temp;
}
