
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree {int dummy; } ;
struct tag {char const* tag; } ;
struct setup_revision_opt {char* def; int tweak; } ;
struct TYPE_4__ {int nr; int alloc; struct object_array_entry* objects; } ;
struct TYPE_3__ {int stat_width; int file; } ;
struct rev_info {int diff; int always_show_header; int shown_one; TYPE_2__ pending; TYPE_1__ diffopt; int no_walk; } ;
struct pathspec {char* def; int tweak; } ;
struct object_id {int dummy; } ;
struct object_array_entry {char* name; struct object* item; } ;
struct object {int type; int oid; } ;
typedef int opt ;
typedef int match_all ;


 int DIFF_COMMIT ;
 int DIFF_RESET ;




 int REVISION_WALK_NO_WALK_SORTED ;
 int _ (char*) ;
 int add_object_array (struct object*,char const*,TYPE_2__*) ;
 int cmd_log_init (int,char const**,char const*,struct rev_info*,struct setup_revision_opt*) ;
 int cmd_log_walk (struct rev_info*) ;
 char* diff_get_color_opt (TYPE_1__*,int ) ;
 int error (int ,int) ;
 int fprintf (int ,char*,char*,char const*,char*) ;
 int free (struct object_array_entry*) ;
 struct object_id* get_tagged_oid (struct tag*) ;
 int git_config (int ,int *) ;
 int git_log_config ;
 int init_log_defaults () ;
 int memset (struct setup_revision_opt*,int ,int) ;
 int oid_to_hex (struct object_id*) ;
 struct object* parse_object (int ,struct object_id*) ;
 int putchar (char) ;
 int read_tree_recursive (int ,struct tree*,char*,int ,int ,struct setup_revision_opt*,int ,int ) ;
 int repo_init_revisions (int ,struct rev_info*,char const*) ;
 int show_blob_object (int *,struct rev_info*,char const*) ;
 int show_setup_revisions_tweak ;
 int show_tag_object (int *,struct rev_info*) ;
 int show_tree_object ;
 int the_repository ;

int cmd_show(int argc, const char **argv, const char *prefix)
{
 struct rev_info rev;
 struct object_array_entry *objects;
 struct setup_revision_opt opt;
 struct pathspec match_all;
 int i, count, ret = 0;

 init_log_defaults();
 git_config(git_log_config, ((void*)0));

 memset(&match_all, 0, sizeof(match_all));
 repo_init_revisions(the_repository, &rev, prefix);
 rev.diff = 1;
 rev.always_show_header = 1;
 rev.no_walk = REVISION_WALK_NO_WALK_SORTED;
 rev.diffopt.stat_width = -1;

 memset(&opt, 0, sizeof(opt));
 opt.def = "HEAD";
 opt.tweak = show_setup_revisions_tweak;
 cmd_log_init(argc, argv, prefix, &rev, &opt);

 if (!rev.no_walk)
  return cmd_log_walk(&rev);

 count = rev.pending.nr;
 objects = rev.pending.objects;
 for (i = 0; i < count && !ret; i++) {
  struct object *o = objects[i].item;
  const char *name = objects[i].name;
  switch (o->type) {
  case 131:
   ret = show_blob_object(&o->oid, &rev, name);
   break;
  case 129: {
   struct tag *t = (struct tag *)o;
   struct object_id *oid = get_tagged_oid(t);

   if (rev.shown_one)
    putchar('\n');
   fprintf(rev.diffopt.file, "%stag %s%s\n",
     diff_get_color_opt(&rev.diffopt, DIFF_COMMIT),
     t->tag,
     diff_get_color_opt(&rev.diffopt, DIFF_RESET));
   ret = show_tag_object(&o->oid, &rev);
   rev.shown_one = 1;
   if (ret)
    break;
   o = parse_object(the_repository, oid);
   if (!o)
    ret = error(_("could not read object %s"),
         oid_to_hex(oid));
   objects[i].item = o;
   i--;
   break;
  }
  case 128:
   if (rev.shown_one)
    putchar('\n');
   fprintf(rev.diffopt.file, "%stree %s%s\n\n",
     diff_get_color_opt(&rev.diffopt, DIFF_COMMIT),
     name,
     diff_get_color_opt(&rev.diffopt, DIFF_RESET));
   read_tree_recursive(the_repository, (struct tree *)o, "",
         0, 0, &match_all, show_tree_object,
         rev.diffopt.file);
   rev.shown_one = 1;
   break;
  case 130:
   rev.pending.nr = rev.pending.alloc = 0;
   rev.pending.objects = ((void*)0);
   add_object_array(o, name, &rev.pending);
   ret = cmd_log_walk(&rev);
   break;
  default:
   ret = error(_("unknown type: %d"), o->type);
  }
 }
 free(objects);
 return ret;
}
