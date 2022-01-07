
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwcm_work {TYPE_1__* cm_id; int free_list; } ;
struct TYPE_2__ {int work_free_list; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static void put_work(struct iwcm_work *work)
{
 list_add(&work->free_list, &work->cm_id->work_free_list);
}
