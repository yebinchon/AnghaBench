
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int BUG_ON_OPT_NEG (int) ;
 int resolve_undo_clear () ;

__attribute__((used)) static int resolve_undo_clear_callback(const struct option *opt,
    const char *arg, int unset)
{
 BUG_ON_OPT_NEG(unset);
 BUG_ON_OPT_ARG(arg);
 resolve_undo_clear();
 return 0;
}
