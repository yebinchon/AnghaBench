
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int append_strategy (int ) ;
 int get_strategy (char const*) ;

__attribute__((used)) static int option_parse_strategy(const struct option *opt,
     const char *name, int unset)
{
 if (unset)
  return 0;

 append_strategy(get_strategy(name));
 return 0;
}
