
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int extra_cc ;
 int string_list_append (int *,char const*) ;
 int string_list_clear (int *,int ) ;

__attribute__((used)) static int cc_callback(const struct option *opt, const char *arg, int unset)
{
 if (unset)
  string_list_clear(&extra_cc, 0);
 else
  string_list_append(&extra_cc, arg);
 return 0;
}
