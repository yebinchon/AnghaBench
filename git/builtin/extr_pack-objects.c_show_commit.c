
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int oid; } ;
struct commit {TYPE_1__ object; } ;


 int OBJECT_ADDED ;
 int OBJ_COMMIT ;
 int add_object_entry (int *,int ,int *,int ) ;
 int index_commit_for_bitmap (struct commit*) ;
 int propagate_island_marks (struct commit*) ;
 scalar_t__ use_delta_islands ;
 scalar_t__ write_bitmap_index ;

__attribute__((used)) static void show_commit(struct commit *commit, void *data)
{
 add_object_entry(&commit->object.oid, OBJ_COMMIT, ((void*)0), 0);
 commit->object.flags |= OBJECT_ADDED;

 if (write_bitmap_index)
  index_commit_for_bitmap(commit);

 if (use_delta_islands)
  propagate_island_marks(commit);
}
