
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Linetype ;


 scalar_t__ LT_ERROR ;
 scalar_t__ LT_IF ;
 int constexpr ;
 int debug (char*,...) ;
 int eval_ops ;
 scalar_t__ eval_table (int ,long*,char const**) ;
 scalar_t__ killconsts ;

__attribute__((used)) static Linetype
ifeval(const char **cpp)
{
 Linetype ret;
 long val = 0;

 debug("eval %s", *cpp);
 constexpr = killconsts ? 0 : 1;
 ret = eval_table(eval_ops, &val, cpp);
 debug("eval = %d", val);
 return (constexpr ? LT_IF : ret == LT_ERROR ? LT_IF : ret);
}
