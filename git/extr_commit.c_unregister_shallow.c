
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct object_id {int hash; } ;
struct TYPE_5__ {TYPE_1__* parsed_objects; } ;
struct TYPE_4__ {int grafts_nr; scalar_t__ grafts; } ;


 int MOVE_ARRAY (scalar_t__,scalar_t__,int) ;
 int commit_graft_pos (TYPE_2__*,int ) ;
 TYPE_2__* the_repository ;

int unregister_shallow(const struct object_id *oid)
{
 int pos = commit_graft_pos(the_repository, oid->hash);
 if (pos < 0)
  return -1;
 if (pos + 1 < the_repository->parsed_objects->grafts_nr)
  MOVE_ARRAY(the_repository->parsed_objects->grafts + pos,
      the_repository->parsed_objects->grafts + pos + 1,
      the_repository->parsed_objects->grafts_nr - pos - 1);
 the_repository->parsed_objects->grafts_nr--;
 return 0;
}
