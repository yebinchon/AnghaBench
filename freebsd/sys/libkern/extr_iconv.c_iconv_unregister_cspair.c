
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iconv_cspair {struct iconv_cspair* cp_data; } ;


 int M_ICONV ;
 int M_ICONVDATA ;
 int TAILQ_REMOVE (int *,struct iconv_cspair*,int ) ;
 int cp_link ;
 int free (struct iconv_cspair*,int ) ;
 int iconv_cslist ;

__attribute__((used)) static void
iconv_unregister_cspair(struct iconv_cspair *csp)
{
 TAILQ_REMOVE(&iconv_cslist, csp, cp_link);
 if (csp->cp_data)
  free(csp->cp_data, M_ICONVDATA);
 free(csp, M_ICONV);
}
