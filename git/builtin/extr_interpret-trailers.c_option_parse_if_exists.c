
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int if_exists ;
 int trailer_set_if_exists (int *,char const*) ;

__attribute__((used)) static int option_parse_if_exists(const struct option *opt,
      const char *arg, int unset)
{
 return trailer_set_if_exists(&if_exists, arg);
}
