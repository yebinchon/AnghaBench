
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_mfilter {int dummy; } ;


 int M_INMFILTER ;
 int free (struct in_mfilter*,int ) ;
 int imf_purge (struct in_mfilter*) ;

void
ip_mfilter_free(struct in_mfilter *imf)
{

 imf_purge(imf);
 free(imf, M_INMFILTER);
}
