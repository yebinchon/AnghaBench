
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct note_data* value; } ;
struct note_data {int use_editor; } ;


 int BUG_ON_OPT_NEG (int) ;
 int parse_reuse_arg (struct option const*,char const*,int) ;

__attribute__((used)) static int parse_reedit_arg(const struct option *opt, const char *arg, int unset)
{
 struct note_data *d = opt->value;
 BUG_ON_OPT_NEG(unset);
 d->use_editor = 1;
 return parse_reuse_arg(opt, arg, unset);
}
