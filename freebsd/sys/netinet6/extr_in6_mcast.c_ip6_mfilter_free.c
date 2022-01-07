
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_mfilter {int dummy; } ;


 int M_IN6MFILTER ;
 int free (struct in6_mfilter*,int ) ;
 int im6f_purge (struct in6_mfilter*) ;

void
ip6_mfilter_free(struct in6_mfilter *imf)
{

 im6f_purge(imf);
 free(imf, M_IN6MFILTER);
}
