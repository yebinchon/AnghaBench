
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int study ;
struct object_array {int nr; TYPE_2__* objects; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_6__ {int flags; int oid; int parsed; } ;
struct commit {TYPE_3__ object; struct commit_list* parents; } ;
typedef int found ;
struct TYPE_5__ {TYPE_1__* item; } ;
struct TYPE_4__ {int flags; } ;


 int INCOMPLETE ;
 int SEEN ;
 int STUDYING ;
 int add_object_array (TYPE_3__*,int *,struct object_array*) ;
 int get_commit_tree_oid (struct commit*) ;
 int memset (struct object_array*,int ,int) ;
 int object_array_clear (struct object_array*) ;
 scalar_t__ object_array_pop (struct object_array*) ;
 int parse_object (int ,int *) ;
 int the_repository ;
 int tree_is_complete (int ) ;

__attribute__((used)) static int commit_is_complete(struct commit *commit)
{
 struct object_array study;
 struct object_array found;
 int is_incomplete = 0;
 int i;


 if (commit->object.flags & SEEN)
  return 1;
 if (commit->object.flags & INCOMPLETE)
  return 0;







 memset(&study, 0, sizeof(study));
 memset(&found, 0, sizeof(found));
 add_object_array(&commit->object, ((void*)0), &study);
 add_object_array(&commit->object, ((void*)0), &found);
 commit->object.flags |= STUDYING;
 while (study.nr) {
  struct commit *c;
  struct commit_list *parent;

  c = (struct commit *)object_array_pop(&study);
  if (!c->object.parsed && !parse_object(the_repository, &c->object.oid))
   c->object.flags |= INCOMPLETE;

  if (c->object.flags & INCOMPLETE) {
   is_incomplete = 1;
   break;
  }
  else if (c->object.flags & SEEN)
   continue;
  for (parent = c->parents; parent; parent = parent->next) {
   struct commit *p = parent->item;
   if (p->object.flags & STUDYING)
    continue;
   p->object.flags |= STUDYING;
   add_object_array(&p->object, ((void*)0), &study);
   add_object_array(&p->object, ((void*)0), &found);
  }
 }
 if (!is_incomplete) {




  for (i = 0; i < found.nr; i++) {
   struct commit *c =
    (struct commit *)found.objects[i].item;
   if (!tree_is_complete(get_commit_tree_oid(c))) {
    is_incomplete = 1;
    c->object.flags |= INCOMPLETE;
   }
  }
  if (!is_incomplete) {

   for (i = 0; i < found.nr; i++)
    found.objects[i].item->flags |= SEEN;
  }
 }

 for (i = 0; i < found.nr; i++)
  found.objects[i].item->flags &= ~STUDYING;
 if (is_incomplete)
  commit->object.flags |= INCOMPLETE;
 else {
  for (i = 0; i < found.nr; i++)
   found.objects[i].item->flags |= SEEN;
 }

 object_array_clear(&study);
 object_array_clear(&found);
 return !is_incomplete;
}
