
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobj {int dummy; } ;
struct iconv_xlat {TYPE_1__* d_csp; } ;
struct TYPE_2__ {int cp_refcount; } ;


 int M_ICONV ;
 int kobj_delete (struct kobj*,int ) ;

__attribute__((used)) static int
iconv_xlat_close(void *data)
{
 struct iconv_xlat *dp = data;

 dp->d_csp->cp_refcount--;
 kobj_delete((struct kobj*)data, M_ICONV);
 return 0;
}
