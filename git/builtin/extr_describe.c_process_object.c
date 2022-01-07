
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct process_commit_data {TYPE_1__* revs; TYPE_2__* dst; int current_commit; int looking_for; } ;
struct object {int oid; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_4__ {int * commits; } ;


 int describe_commit (int *,TYPE_2__*) ;
 int free_commit_list (int *) ;
 scalar_t__ oideq (int *,int *) ;
 int reset_revision_walk () ;
 int strbuf_addf (TYPE_2__*,char*,char const*) ;

__attribute__((used)) static void process_object(struct object *obj, const char *path, void *data)
{
 struct process_commit_data *pcd = data;

 if (oideq(&pcd->looking_for, &obj->oid) && !pcd->dst->len) {
  reset_revision_walk();
  describe_commit(&pcd->current_commit, pcd->dst);
  strbuf_addf(pcd->dst, ":%s", path);
  free_commit_list(pcd->revs->commits);
  pcd->revs->commits = ((void*)0);
 }
}
