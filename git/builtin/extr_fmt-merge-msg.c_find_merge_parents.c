
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int len; char* buf; } ;
struct object_id {int dummy; } ;
struct object {int oid; } ;
struct merge_parents {int nr; TYPE_2__* item; } ;
struct commit_list {int dummy; } ;
struct TYPE_3__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_4__ {int used; int commit; } ;


 int OBJ_COMMIT ;
 int add_merge_parent (struct merge_parents*,int *,int *) ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 struct commit* lookup_commit (int ,struct object_id*) ;
 scalar_t__ oideq (int *,int *) ;
 struct object* parse_object (int ,struct object_id*) ;
 scalar_t__ parse_oid_hex (char*,struct object_id*,char const**) ;
 scalar_t__ peel_to_type (int *,int ,struct object*,int ) ;
 struct commit* pop_commit (struct commit_list**) ;
 int reduce_heads_replace (struct commit_list**) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int the_repository ;

__attribute__((used)) static void find_merge_parents(struct merge_parents *result,
          struct strbuf *in, struct object_id *head)
{
 struct commit_list *parents;
 struct commit *head_commit;
 int pos = 0, i, j;

 parents = ((void*)0);
 while (pos < in->len) {
  int len;
  char *p = in->buf + pos;
  char *newline = strchr(p, '\n');
  const char *q;
  struct object_id oid;
  struct commit *parent;
  struct object *obj;

  len = newline ? newline - p : strlen(p);
  pos += len + !!newline;

  if (parse_oid_hex(p, &oid, &q) ||
      q[0] != '\t' ||
      q[1] != '\t')
   continue;





  obj = parse_object(the_repository, &oid);
  parent = (struct commit *)peel_to_type(((void*)0), 0, obj, OBJ_COMMIT);
  if (!parent)
   continue;
  commit_list_insert(parent, &parents);
  add_merge_parent(result, &obj->oid, &parent->object.oid);
 }
 head_commit = lookup_commit(the_repository, head);
 if (head_commit)
  commit_list_insert(head_commit, &parents);
 reduce_heads_replace(&parents);

 while (parents) {
  struct commit *cmit = pop_commit(&parents);
  for (i = 0; i < result->nr; i++)
   if (oideq(&result->item[i].commit, &cmit->object.oid))
    result->item[i].used = 1;
 }

 for (i = j = 0; i < result->nr; i++) {
  if (result->item[i].used) {
   if (i != j)
    result->item[j] = result->item[i];
   j++;
  }
 }
 result->nr = j;
}
