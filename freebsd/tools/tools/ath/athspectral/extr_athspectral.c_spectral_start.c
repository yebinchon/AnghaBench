
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ad_id; int ad_out_size; int ad_name; scalar_t__ ad_out_data; scalar_t__ ad_in_size; int * ad_in_data; } ;
struct spectralhandler {TYPE_1__ atd; int s; } ;
typedef int pe ;
typedef scalar_t__ caddr_t ;
typedef int HAL_SPECTRAL_PARAM ;


 int ATH_DIAG_DYN ;
 int SIOCGATHSPECTRAL ;
 int SPECTRAL_CONTROL_START ;
 int err (int,char*,int ) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
spectral_start(struct spectralhandler *spectral)
{
 HAL_SPECTRAL_PARAM pe;

 spectral->atd.ad_id = SPECTRAL_CONTROL_START | ATH_DIAG_DYN;
 memset(&pe, 0, sizeof(pe));





 spectral->atd.ad_in_data = ((void*)0);
 spectral->atd.ad_in_size = 0;
 spectral->atd.ad_out_data = (caddr_t) &pe;
 spectral->atd.ad_out_size = sizeof(pe);

 if (ioctl(spectral->s, SIOCGATHSPECTRAL, &spectral->atd) < 0)
  err(1, "%s", spectral->atd.ad_name);
}
