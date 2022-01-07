
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int BUG_ON_OPT_NEG (int) ;
 int set_alternate_index_output (char const*) ;

__attribute__((used)) static int index_output_cb(const struct option *opt, const char *arg,
     int unset)
{
 BUG_ON_OPT_NEG(unset);
 set_alternate_index_output(arg);
 return 0;
}
