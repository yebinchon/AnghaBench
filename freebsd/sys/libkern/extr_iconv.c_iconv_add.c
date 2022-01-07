
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iconv_cspair {int dummy; } ;
struct iconv_converter_class {int dummy; } ;


 int EINVAL ;
 scalar_t__ iconv_lookupconv (char const*,struct iconv_converter_class**) ;
 int iconv_register_cspair (char const*,char const*,struct iconv_converter_class*,int *,struct iconv_cspair**) ;

int
iconv_add(const char *converter, const char *to, const char *from)
{
 struct iconv_converter_class *dcp;
 struct iconv_cspair *csp;

 if (iconv_lookupconv(converter, &dcp) != 0)
  return EINVAL;

 return iconv_register_cspair(to, from, dcp, ((void*)0), &csp);
}
