
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_int32_t ;
struct TYPE_4__ {int ad_id; int ad_in_size; int ad_name; scalar_t__ ad_in_data; scalar_t__ ad_out_size; int * ad_out_data; } ;
struct spectralhandler {TYPE_2__ atd; int s; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_3__ {void* ss_spectral_pri; void* ss_short_report; void* ss_count; void* ss_period; void* ss_fft_period; void* ss_active; void* ss_enabled; } ;
typedef TYPE_1__ HAL_SPECTRAL_PARAM ;


 int ATH_DIAG_IN ;
 void* HAL_SPECTRAL_PARAM_NOVAL ;
 int SIOCGATHSPECTRAL ;
 int SPECTRAL_CONTROL_SET_PARAMS ;





 int err (int,char*,int ) ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;

void
spectralset(struct spectralhandler *spectral, int op, u_int32_t param)
{
 HAL_SPECTRAL_PARAM pe;

 pe.ss_fft_period = HAL_SPECTRAL_PARAM_NOVAL;
 pe.ss_period = HAL_SPECTRAL_PARAM_NOVAL;
 pe.ss_count = HAL_SPECTRAL_PARAM_NOVAL;
 pe.ss_short_report = HAL_SPECTRAL_PARAM_NOVAL;
 pe.ss_spectral_pri = HAL_SPECTRAL_PARAM_NOVAL;
 pe.ss_fft_period = HAL_SPECTRAL_PARAM_NOVAL;
 pe.ss_enabled = HAL_SPECTRAL_PARAM_NOVAL;
 pe.ss_active = HAL_SPECTRAL_PARAM_NOVAL;

 switch (op) {
 case 132:
  pe.ss_fft_period = param;
  break;
 case 130:
  pe.ss_period = param;
  break;
 case 131:
  pe.ss_count = param;
  break;
 case 129:
  pe.ss_short_report = param;
  break;
 case 128:
  pe.ss_spectral_pri = param;
  break;
 }

 spectral->atd.ad_id = SPECTRAL_CONTROL_SET_PARAMS | ATH_DIAG_IN;
 spectral->atd.ad_out_data = ((void*)0);
 spectral->atd.ad_out_size = 0;
 spectral->atd.ad_in_data = (caddr_t) &pe;
 spectral->atd.ad_in_size = sizeof(HAL_SPECTRAL_PARAM);
 if (ioctl(spectral->s, SIOCGATHSPECTRAL, &spectral->atd) < 0)
  err(1, "%s", spectral->atd.ad_name);
}
