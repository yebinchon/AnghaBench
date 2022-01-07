
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setup_revision_opt {int dummy; } ;
struct rev_info {int dummy; } ;


 int cmd_log_init_defaults (struct rev_info*) ;
 int cmd_log_init_finish (int,char const**,char const*,struct rev_info*,struct setup_revision_opt*) ;

__attribute__((used)) static void cmd_log_init(int argc, const char **argv, const char *prefix,
    struct rev_info *rev, struct setup_revision_opt *opt)
{
 cmd_log_init_defaults(rev);
 cmd_log_init_finish(argc, argv, prefix, rev, opt);
}
