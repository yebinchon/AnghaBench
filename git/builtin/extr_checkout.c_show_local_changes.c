
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output_format; int flags; } ;
struct rev_info {TYPE_1__ diffopt; } ;
struct object {int dummy; } ;
struct diff_options {int flags; } ;


 int DIFF_FORMAT_NAME_STATUS ;
 int add_pending_object (struct rev_info*,struct object*,int *) ;
 int diff_setup_done (TYPE_1__*) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 int run_diff_index (struct rev_info*,int ) ;
 int the_repository ;

__attribute__((used)) static void show_local_changes(struct object *head,
          const struct diff_options *opts)
{
 struct rev_info rev;

 repo_init_revisions(the_repository, &rev, ((void*)0));
 rev.diffopt.flags = opts->flags;
 rev.diffopt.output_format |= DIFF_FORMAT_NAME_STATUS;
 diff_setup_done(&rev.diffopt);
 add_pending_object(&rev, head, ((void*)0));
 run_diff_index(&rev, 0);
}
