
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct repository {int dummy; } ;
struct TYPE_6__ {int recursive; } ;
struct diff_options {int pathspec; int output_format; scalar_t__ detect_rename; TYPE_1__ flags; } ;
struct diff_filepair {int status; TYPE_4__* one; TYPE_3__* two; } ;
struct TYPE_7__ {int oid; } ;
struct commit {TYPE_2__ object; } ;
struct blame_origin {char const* path; int mode; int blob_oid; struct commit* commit; struct blame_origin* next; } ;
struct TYPE_10__ {int nr; struct diff_filepair** queue; } ;
struct TYPE_9__ {char* path; int mode; int oid; } ;
struct TYPE_8__ {char* path; } ;


 int DIFF_FORMAT_NO_OUTPUT ;
 int PATHSPEC_ALL_MAGIC ;
 int PATHSPEC_LITERAL ;
 int PATHSPEC_LITERAL_PATH ;
 struct blame_origin* blame_origin_incref (struct blame_origin*) ;
 int clear_pathspec (int *) ;
 int die (char*,...) ;
 int diff_flush (struct diff_options*) ;
 TYPE_5__ diff_queued_diff ;
 int diff_setup_done (struct diff_options*) ;
 int diff_tree_oid (int ,int ,char*,struct diff_options*) ;
 int diffcore_std (struct diff_options*) ;
 int do_diff_cache (int ,struct diff_options*) ;
 struct blame_origin* get_blame_suspects (struct commit*) ;
 int get_commit_tree_oid (struct commit*) ;
 struct blame_origin* get_origin (struct commit*,char*) ;
 scalar_t__ is_null_oid (int *) ;
 int oidcpy (int *,int *) ;
 int parse_pathspec (int *,int,int ,char*,char const**) ;
 int repo_diff_setup (struct repository*,struct diff_options*) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static struct blame_origin *find_origin(struct repository *r,
     struct commit *parent,
     struct blame_origin *origin)
{
 struct blame_origin *porigin;
 struct diff_options diff_opts;
 const char *paths[2];


 for (porigin = get_blame_suspects(parent); porigin; porigin = porigin->next)
  if (!strcmp(porigin->path, origin->path)) {




   return blame_origin_incref (porigin);
  }





 repo_diff_setup(r, &diff_opts);
 diff_opts.flags.recursive = 1;
 diff_opts.detect_rename = 0;
 diff_opts.output_format = DIFF_FORMAT_NO_OUTPUT;
 paths[0] = origin->path;
 paths[1] = ((void*)0);

 parse_pathspec(&diff_opts.pathspec,
         PATHSPEC_ALL_MAGIC & ~PATHSPEC_LITERAL,
         PATHSPEC_LITERAL_PATH, "", paths);
 diff_setup_done(&diff_opts);

 if (is_null_oid(&origin->commit->object.oid))
  do_diff_cache(get_commit_tree_oid(parent), &diff_opts);
 else
  diff_tree_oid(get_commit_tree_oid(parent),
         get_commit_tree_oid(origin->commit),
         "", &diff_opts);
 diffcore_std(&diff_opts);

 if (!diff_queued_diff.nr) {

  porigin = get_origin(parent, origin->path);
  oidcpy(&porigin->blob_oid, &origin->blob_oid);
  porigin->mode = origin->mode;
 } else {






  int i;
  struct diff_filepair *p = ((void*)0);
  for (i = 0; i < diff_queued_diff.nr; i++) {
   const char *name;
   p = diff_queued_diff.queue[i];
   name = p->one->path ? p->one->path : p->two->path;
   if (!strcmp(name, origin->path))
    break;
  }
  if (!p)
   die("internal error in blame::find_origin");
  switch (p->status) {
  default:
   die("internal error in blame::find_origin (%c)",
       p->status);
  case 'M':
   porigin = get_origin(parent, origin->path);
   oidcpy(&porigin->blob_oid, &p->one->oid);
   porigin->mode = p->one->mode;
   break;
  case 'A':
  case 'T':

   break;
  }
 }
 diff_flush(&diff_opts);
 clear_pathspec(&diff_opts.pathspec);
 return porigin;
}
