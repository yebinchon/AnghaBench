
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_class {int dummy; } ;
struct iconv_xlat {struct iconv_cspair* d_csp; int d_table; } ;
struct iconv_cspair {int cp_refcount; int cp_data; } ;
struct iconv_converter_class {int dummy; } ;


 int M_ICONV ;
 int M_WAITOK ;
 scalar_t__ kobj_create (struct kobj_class*,int ,int ) ;

__attribute__((used)) static int
iconv_xlat_open(struct iconv_converter_class *dcp,
 struct iconv_cspair *csp, struct iconv_cspair *cspf, void **dpp)
{
 struct iconv_xlat *dp;

 dp = (struct iconv_xlat *)kobj_create((struct kobj_class*)dcp, M_ICONV, M_WAITOK);
 dp->d_table = csp->cp_data;
 dp->d_csp = csp;
 csp->cp_refcount++;
 *dpp = (void*)dp;
 return 0;
}
