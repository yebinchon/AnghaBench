
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
struct diff_options {int pathspec; int single_follow; int output_format; int detect_rename; TYPE_1__ flags; } ;
struct diff_filepair {char status; TYPE_4__* one; TYPE_3__* two; } ;
struct TYPE_7__ {int oid; } ;
struct commit {TYPE_2__ object; } ;
struct blame_origin {int mode; int blob_oid; int path; struct commit* commit; } ;
struct TYPE_10__ {int nr; struct diff_filepair** queue; } ;
struct TYPE_9__ {int mode; int oid; int path; } ;
struct TYPE_8__ {int path; } ;


 int DIFF_DETECT_RENAME ;
 int DIFF_FORMAT_NO_OUTPUT ;
 int clear_pathspec (int *) ;
 int diff_flush (struct diff_options*) ;
 TYPE_5__ diff_queued_diff ;
 int diff_setup_done (struct diff_options*) ;
 int diff_tree_oid (int ,int ,char*,struct diff_options*) ;
 int diffcore_std (struct diff_options*) ;
 int do_diff_cache (int ,struct diff_options*) ;
 int get_commit_tree_oid (struct commit*) ;
 struct blame_origin* get_origin (struct commit*,int ) ;
 scalar_t__ is_null_oid (int *) ;
 int oidcpy (int *,int *) ;
 int repo_diff_setup (struct repository*,struct diff_options*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static struct blame_origin *find_rename(struct repository *r,
     struct commit *parent,
     struct blame_origin *origin)
{
 struct blame_origin *porigin = ((void*)0);
 struct diff_options diff_opts;
 int i;

 repo_diff_setup(r, &diff_opts);
 diff_opts.flags.recursive = 1;
 diff_opts.detect_rename = DIFF_DETECT_RENAME;
 diff_opts.output_format = DIFF_FORMAT_NO_OUTPUT;
 diff_opts.single_follow = origin->path;
 diff_setup_done(&diff_opts);

 if (is_null_oid(&origin->commit->object.oid))
  do_diff_cache(get_commit_tree_oid(parent), &diff_opts);
 else
  diff_tree_oid(get_commit_tree_oid(parent),
         get_commit_tree_oid(origin->commit),
         "", &diff_opts);
 diffcore_std(&diff_opts);

 for (i = 0; i < diff_queued_diff.nr; i++) {
  struct diff_filepair *p = diff_queued_diff.queue[i];
  if ((p->status == 'R' || p->status == 'C') &&
      !strcmp(p->two->path, origin->path)) {
   porigin = get_origin(parent, p->one->path);
   oidcpy(&porigin->blob_oid, &p->one->oid);
   porigin->mode = p->one->mode;
   break;
  }
 }
 diff_flush(&diff_opts);
 clear_pathspec(&diff_opts.pathspec);
 return porigin;
}
