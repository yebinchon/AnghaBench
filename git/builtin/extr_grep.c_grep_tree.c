
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct strbuf {int len; int * buf; } ;
struct repository {int index; int * submodule_prefix; } ;
struct pathspec {int dummy; } ;
struct name_entry {int oid; int mode; int path; } ;
struct grep_opt {scalar_t__ status_only; struct repository* repo; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
typedef enum interesting { ____Placeholder_interesting } interesting ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int _ (char*) ;
 int all_entries_interesting ;
 int all_entries_not_interesting ;
 int die (int ,int ) ;
 int entry_not_interesting ;
 int free (void*) ;
 int grep_oid (struct grep_opt*,int *,int *,int,int *) ;
 int grep_submodule (struct grep_opt*,struct pathspec const*,int *,int *,int *,int) ;
 int init_tree_desc (struct tree_desc*,void*,unsigned long) ;
 void* lock_and_read_oid_file (int *,int*,unsigned long*) ;
 int oid_to_hex (int *) ;
 scalar_t__ recurse_submodules ;
 int strbuf_add (struct strbuf*,int ,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 scalar_t__ tree_entry (struct tree_desc*,struct name_entry*) ;
 int tree_entry_interesting (int ,struct name_entry*,struct strbuf*,int ,struct pathspec const*) ;
 int tree_entry_len (struct name_entry*) ;

__attribute__((used)) static int grep_tree(struct grep_opt *opt, const struct pathspec *pathspec,
       struct tree_desc *tree, struct strbuf *base, int tn_len,
       int check_attr)
{
 struct repository *repo = opt->repo;
 int hit = 0;
 enum interesting match = entry_not_interesting;
 struct name_entry entry;
 int old_baselen = base->len;
 struct strbuf name = STRBUF_INIT;
 int name_base_len = 0;
 if (repo->submodule_prefix) {
  strbuf_addstr(&name, repo->submodule_prefix);
  name_base_len = name.len;
 }

 while (tree_entry(tree, &entry)) {
  int te_len = tree_entry_len(&entry);

  if (match != all_entries_interesting) {
   strbuf_addstr(&name, base->buf + tn_len);
   match = tree_entry_interesting(repo->index,
             &entry, &name,
             0, pathspec);
   strbuf_setlen(&name, name_base_len);

   if (match == all_entries_not_interesting)
    break;
   if (match == entry_not_interesting)
    continue;
  }

  strbuf_add(base, entry.path, te_len);

  if (S_ISREG(entry.mode)) {
   hit |= grep_oid(opt, &entry.oid, base->buf, tn_len,
      check_attr ? base->buf + tn_len : ((void*)0));
  } else if (S_ISDIR(entry.mode)) {
   enum object_type type;
   struct tree_desc sub;
   void *data;
   unsigned long size;

   data = lock_and_read_oid_file(&entry.oid, &type, &size);
   if (!data)
    die(_("unable to read tree (%s)"),
        oid_to_hex(&entry.oid));

   strbuf_addch(base, '/');
   init_tree_desc(&sub, data, size);
   hit |= grep_tree(opt, pathspec, &sub, base, tn_len,
      check_attr);
   free(data);
  } else if (recurse_submodules && S_ISGITLINK(entry.mode)) {
   hit |= grep_submodule(opt, pathspec, &entry.oid,
           base->buf, base->buf + tn_len,
           1);
  }

  strbuf_setlen(base, old_baselen);

  if (hit && opt->status_only)
   break;
 }

 strbuf_release(&name);
 return hit;
}
