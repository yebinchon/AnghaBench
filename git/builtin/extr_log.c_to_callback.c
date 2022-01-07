
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int extra_to ;
 int string_list_append (int *,char const*) ;
 int string_list_clear (int *,int ) ;

__attribute__((used)) static int to_callback(const struct option *opt, const char *arg, int unset)
{
 if (unset)
  string_list_clear(&extra_to, 0);
 else
  string_list_append(&extra_to, arg);
 return 0;
}
