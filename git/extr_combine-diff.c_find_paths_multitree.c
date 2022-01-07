
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct oid_array {int nr; struct object_id* oid; } ;
struct object_id {int dummy; } ;
struct diff_options {int dummy; } ;
struct combine_diff_path {struct combine_diff_path* next; } ;


 int ALLOC_ARRAY (struct object_id const**,int) ;
 int PATH_MAX ;
 int diff_tree_paths (struct combine_diff_path*,struct object_id const*,struct object_id const**,int,struct strbuf*,struct diff_options*) ;
 int free (struct object_id const**) ;
 int strbuf_init (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static struct combine_diff_path *find_paths_multitree(
 const struct object_id *oid, const struct oid_array *parents,
 struct diff_options *opt)
{
 int i, nparent = parents->nr;
 const struct object_id **parents_oid;
 struct combine_diff_path paths_head;
 struct strbuf base;

 ALLOC_ARRAY(parents_oid, nparent);
 for (i = 0; i < nparent; i++)
  parents_oid[i] = &parents->oid[i];


 paths_head.next = ((void*)0);

 strbuf_init(&base, PATH_MAX);
 diff_tree_paths(&paths_head, oid, parents_oid, nparent, &base, opt);

 strbuf_release(&base);
 free(parents_oid);
 return paths_head.next;
}
