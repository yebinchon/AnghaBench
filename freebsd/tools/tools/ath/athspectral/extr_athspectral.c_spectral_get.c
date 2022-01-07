
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ad_id; int ad_out_size; int ad_name; scalar_t__ ad_out_data; scalar_t__ ad_in_size; int * ad_in_data; } ;
struct spectralhandler {TYPE_3__ atd; int s; } ;
typedef int pe ;
typedef scalar_t__ caddr_t ;
struct TYPE_4__ {int ss_enabled; int ss_active; int ss_count; int ss_fft_period; int ss_period; int ss_short_report; int ss_spectral_pri; int radar_bin_thresh_sel; } ;
typedef TYPE_1__ HAL_SPECTRAL_PARAM ;


 int ATH_DIAG_DYN ;
 int SIOCGATHSPECTRAL ;
 int SPECTRAL_CONTROL_GET_PARAMS ;
 int err (int,char*,int ) ;
 scalar_t__ ioctl (int ,int ,TYPE_3__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
spectral_get(struct spectralhandler *spectral)
{
 HAL_SPECTRAL_PARAM pe;

 spectral->atd.ad_id = SPECTRAL_CONTROL_GET_PARAMS | ATH_DIAG_DYN;
 memset(&pe, 0, sizeof(pe));

 spectral->atd.ad_in_data = ((void*)0);
 spectral->atd.ad_in_size = 0;
 spectral->atd.ad_out_data = (caddr_t) &pe;
 spectral->atd.ad_out_size = sizeof(pe);

 if (ioctl(spectral->s, SIOCGATHSPECTRAL, &spectral->atd) < 0)
  err(1, "%s", spectral->atd.ad_name);

 printf("Spectral parameters (raw):\n");
 printf("   ss_enabled: %d\n", pe.ss_enabled);
 printf("   ss_active: %d\n", pe.ss_active);
 printf("   ss_count: %d\n", pe.ss_count);
 printf("   ss_fft_period: %d\n", pe.ss_fft_period);
 printf("   ss_period: %d\n", pe.ss_period);
 printf("   ss_short_report: %d\n", pe.ss_short_report);
 printf("   ss_spectral_pri: %d\n", pe.ss_spectral_pri);
 printf("   radar_bin_thresh_sel: %d\n", pe.radar_bin_thresh_sel);
}
