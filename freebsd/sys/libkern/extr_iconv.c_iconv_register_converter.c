
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_class {int dummy; } ;
struct iconv_converter_class {int refs; } ;


 int TAILQ_INSERT_TAIL (int *,struct iconv_converter_class*,int ) ;
 int cc_link ;
 int iconv_converters ;
 int kobj_class_compile (struct kobj_class*) ;

__attribute__((used)) static int
iconv_register_converter(struct iconv_converter_class *dcp)
{
 kobj_class_compile((struct kobj_class*)dcp);
 dcp->refs++;
 TAILQ_INSERT_TAIL(&iconv_converters, dcp, cc_link);
 return 0;
}
