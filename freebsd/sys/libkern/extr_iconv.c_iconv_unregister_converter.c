
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_class {int dummy; } ;
struct iconv_converter_class {int refs; } ;


 int EBUSY ;
 int ICDEBUG (char*,int) ;
 int TAILQ_REMOVE (int *,struct iconv_converter_class*,int ) ;
 int cc_link ;
 int iconv_converters ;
 int kobj_class_free (struct kobj_class*) ;

__attribute__((used)) static int
iconv_unregister_converter(struct iconv_converter_class *dcp)
{
 dcp->refs--;
 if (dcp->refs > 1) {
  ICDEBUG("converter has %d references left\n", dcp->refs);
  return EBUSY;
 }
 TAILQ_REMOVE(&iconv_converters, dcp, cc_link);
 kobj_class_free((struct kobj_class*)dcp);
 return 0;
}
