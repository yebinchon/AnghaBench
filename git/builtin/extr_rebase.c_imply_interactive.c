
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rebase_options {int type; } ;






 int _ (char*) ;
 int die (int ,char const*) ;

__attribute__((used)) static void imply_interactive(struct rebase_options *opts, const char *option)
{
 switch (opts->type) {
 case 131:
  die(_("%s requires an interactive rebase"), option);
  break;
 case 130:
 case 128:
  break;
 case 129:

 default:
  opts->type = 130;
  break;
 }
}
