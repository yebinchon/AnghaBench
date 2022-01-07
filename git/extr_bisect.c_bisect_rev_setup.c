
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int commit_format; scalar_t__ abbrev; } ;
struct repository {int dummy; } ;
struct argv_array {int argv; int argc; } ;
struct TYPE_2__ {int nr; scalar_t__ oid; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int CMIT_FMT_UNSPECIFIED ;
 int argv_array_push (struct argv_array*,char*) ;
 int argv_array_pushf (struct argv_array*,char const*,int ) ;
 scalar_t__ current_bad_oid ;
 TYPE_1__ good_revs ;
 int oid_to_hex (scalar_t__) ;
 int read_bisect_paths (struct argv_array*) ;
 int repo_init_revisions (struct repository*,struct rev_info*,char const*) ;
 int setup_revisions (int ,int ,struct rev_info*,int *) ;

__attribute__((used)) static void bisect_rev_setup(struct repository *r, struct rev_info *revs,
        const char *prefix,
        const char *bad_format, const char *good_format,
        int read_paths)
{
 struct argv_array rev_argv = ARGV_ARRAY_INIT;
 int i;

 repo_init_revisions(r, revs, prefix);
 revs->abbrev = 0;
 revs->commit_format = CMIT_FMT_UNSPECIFIED;


 argv_array_push(&rev_argv, "bisect_rev_setup");
 argv_array_pushf(&rev_argv, bad_format, oid_to_hex(current_bad_oid));
 for (i = 0; i < good_revs.nr; i++)
  argv_array_pushf(&rev_argv, good_format,
     oid_to_hex(good_revs.oid + i));
 argv_array_push(&rev_argv, "--");
 if (read_paths)
  read_bisect_paths(&rev_argv);

 setup_revisions(rev_argv.argc, rev_argv.argv, revs, ((void*)0));

}
