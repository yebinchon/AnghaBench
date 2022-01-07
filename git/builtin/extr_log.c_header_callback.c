
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int add_header (char const*) ;
 int extra_cc ;
 int extra_hdr ;
 int extra_to ;
 int string_list_clear (int *,int ) ;

__attribute__((used)) static int header_callback(const struct option *opt, const char *arg, int unset)
{
 if (unset) {
  string_list_clear(&extra_hdr, 0);
  string_list_clear(&extra_to, 0);
  string_list_clear(&extra_cc, 0);
 } else {
     add_header(arg);
 }
 return 0;
}
