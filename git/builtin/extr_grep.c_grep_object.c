
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct strbuf {int len; } ;
struct pathspec {int dummy; } ;
struct object {scalar_t__ type; int oid; } ;
struct grep_opt {int repo; } ;


 scalar_t__ OBJ_BLOB ;
 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TREE ;
 scalar_t__ PATH_MAX ;
 int _ (char*) ;
 int die (int ,int ) ;
 int free (void*) ;
 int grep_oid (struct grep_opt*,int *,char const*,int ,char const*) ;
 int grep_read_lock () ;
 int grep_read_unlock () ;
 int grep_tree (struct grep_opt*,struct pathspec const*,struct tree_desc*,struct strbuf*,int ,int) ;
 int init_tree_desc (struct tree_desc*,void*,unsigned long) ;
 int oid_to_hex (int *) ;
 void* read_object_with_reference (int ,int *,int ,unsigned long*,int *) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_init (struct strbuf*,scalar_t__) ;
 int strbuf_release (struct strbuf*) ;
 int strlen (char const*) ;
 int tree_type ;
 int type_name (scalar_t__) ;

__attribute__((used)) static int grep_object(struct grep_opt *opt, const struct pathspec *pathspec,
         struct object *obj, const char *name, const char *path)
{
 if (obj->type == OBJ_BLOB)
  return grep_oid(opt, &obj->oid, name, 0, path);
 if (obj->type == OBJ_COMMIT || obj->type == OBJ_TREE) {
  struct tree_desc tree;
  void *data;
  unsigned long size;
  struct strbuf base;
  int hit, len;

  grep_read_lock();
  data = read_object_with_reference(opt->repo,
        &obj->oid, tree_type,
        &size, ((void*)0));
  grep_read_unlock();

  if (!data)
   die(_("unable to read tree (%s)"), oid_to_hex(&obj->oid));

  len = name ? strlen(name) : 0;
  strbuf_init(&base, PATH_MAX + len + 1);
  if (len) {
   strbuf_add(&base, name, len);
   strbuf_addch(&base, ':');
  }
  init_tree_desc(&tree, data, size);
  hit = grep_tree(opt, pathspec, &tree, &base, base.len,
    obj->type == OBJ_COMMIT);
  strbuf_release(&base);
  free(data);
  return hit;
 }
 die(_("unable to grep from object of type %s"), type_name(obj->type));
}
