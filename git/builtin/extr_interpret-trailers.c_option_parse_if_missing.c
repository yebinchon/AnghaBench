
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int if_missing ;
 int trailer_set_if_missing (int *,char const*) ;

__attribute__((used)) static int option_parse_if_missing(const struct option *opt,
       const char *arg, int unset)
{
 return trailer_set_if_missing(&if_missing, arg);
}
