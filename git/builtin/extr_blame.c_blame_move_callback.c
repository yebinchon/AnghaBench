
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int* value; } ;


 int BUG_ON_OPT_NEG (int) ;
 int PICKAXE_BLAME_MOVE ;
 int blame_move_score ;
 int parse_score (char const*) ;

__attribute__((used)) static int blame_move_callback(const struct option *option, const char *arg, int unset)
{
 int *opt = option->value;

 BUG_ON_OPT_NEG(unset);

 *opt |= PICKAXE_BLAME_MOVE;

 if (arg)
  blame_move_score = parse_score(arg);
 return 0;
}
