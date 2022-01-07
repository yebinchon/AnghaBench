
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* each_commit_graft_fn ) (int ,void*) ;
struct TYPE_4__ {TYPE_1__* parsed_objects; } ;
struct TYPE_3__ {int grafts_nr; int * grafts; } ;


 TYPE_2__* the_repository ;

int for_each_commit_graft(each_commit_graft_fn fn, void *cb_data)
{
 int i, ret;
 for (i = ret = 0; i < the_repository->parsed_objects->grafts_nr && !ret; i++)
  ret = fn(the_repository->parsed_objects->grafts[i], cb_data);
 return ret;
}
