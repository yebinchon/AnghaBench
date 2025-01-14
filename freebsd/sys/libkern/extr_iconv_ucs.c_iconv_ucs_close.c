
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobj {int dummy; } ;
struct iconv_ucs {int convtype; TYPE_2__* d_csp; TYPE_1__* d_cspf; scalar_t__ ctype; scalar_t__ t_ctp; scalar_t__ f_ctp; } ;
struct TYPE_4__ {int cp_refcount; } ;
struct TYPE_3__ {int cp_refcount; } ;


 int KICONV_UCS_FROM_LE ;
 int KICONV_UCS_FROM_UTF8 ;
 int KICONV_UCS_TO_LE ;
 int KICONV_UCS_TO_UTF8 ;
 int M_ICONV ;
 int iconv_close (scalar_t__) ;
 int kobj_delete (struct kobj*,int ) ;

__attribute__((used)) static int
iconv_ucs_close(void *data)
{
 struct iconv_ucs *dp = data;

 if (dp->f_ctp)
  iconv_close(dp->f_ctp);
 if (dp->t_ctp)
  iconv_close(dp->t_ctp);
 if (dp->ctype)
  iconv_close(dp->ctype);
 if (dp->d_cspf)
  dp->d_cspf->cp_refcount--;
 else if (dp->convtype & (KICONV_UCS_FROM_UTF8 | KICONV_UCS_FROM_LE))
  dp->d_csp->cp_refcount--;
 if (dp->convtype & (KICONV_UCS_TO_UTF8 | KICONV_UCS_TO_LE))
  dp->d_csp->cp_refcount--;
 kobj_delete((struct kobj*)data, M_ICONV);
 return 0;
}
