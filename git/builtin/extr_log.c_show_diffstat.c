
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
struct rev_info {TYPE_1__ diffopt; } ;
struct diff_options {int output_format; } ;
struct commit {int dummy; } ;
typedef int opts ;


 int DIFF_FORMAT_DIFFSTAT ;
 int DIFF_FORMAT_SUMMARY ;
 int diff_flush (struct diff_options*) ;
 int diff_setup_done (struct diff_options*) ;
 int diff_tree_oid (int ,int ,char*,struct diff_options*) ;
 int diffcore_std (struct diff_options*) ;
 int fprintf (int ,char*) ;
 int get_commit_tree_oid (struct commit*) ;
 int memcpy (struct diff_options*,TYPE_1__*,int) ;

__attribute__((used)) static void show_diffstat(struct rev_info *rev,
     struct commit *origin, struct commit *head)
{
 struct diff_options opts;

 memcpy(&opts, &rev->diffopt, sizeof(opts));
 opts.output_format = DIFF_FORMAT_SUMMARY | DIFF_FORMAT_DIFFSTAT;
 diff_setup_done(&opts);

 diff_tree_oid(get_commit_tree_oid(origin),
        get_commit_tree_oid(head),
        "", &opts);
 diffcore_std(&opts);
 diff_flush(&opts);

 fprintf(rev->diffopt.file, "\n");
}
