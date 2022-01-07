
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_int32_t ;
struct TYPE_4__ {int ad_id; int ad_in_size; int ad_name; scalar_t__ ad_in_data; scalar_t__ ad_out_size; int * ad_out_data; } ;
struct radarhandler {TYPE_2__ atd; int s; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_3__ {void* pe_en_relstep_check; void* pe_enrelpwr; void* pe_extchannel; void* pe_enmaxrssi; void* pe_blockradar; void* pe_usefir128; void* pe_maxlen; void* pe_relstep; void* pe_relpwr; void* pe_inband; void* pe_prssi; void* pe_height; void* pe_rrssi; void* pe_firpwr; void* pe_enabled; } ;
typedef TYPE_1__ HAL_PHYERR_PARAM ;


 int ATH_DIAG_IN ;
 int DFS_SET_THRESH ;
 void* HAL_PHYERR_PARAM_NOVAL ;
 int SIOCGATHPHYERR ;
 int err (int,int ) ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;

void
radarset(struct radarhandler *radar, int op, u_int32_t param)
{
 HAL_PHYERR_PARAM pe;

 pe.pe_firpwr = HAL_PHYERR_PARAM_NOVAL;
 pe.pe_rrssi = HAL_PHYERR_PARAM_NOVAL;
 pe.pe_height = HAL_PHYERR_PARAM_NOVAL;
 pe.pe_prssi = HAL_PHYERR_PARAM_NOVAL;
 pe.pe_inband = HAL_PHYERR_PARAM_NOVAL;
 pe.pe_enabled = HAL_PHYERR_PARAM_NOVAL;

 pe.pe_relpwr = HAL_PHYERR_PARAM_NOVAL;
 pe.pe_relstep = HAL_PHYERR_PARAM_NOVAL;
 pe.pe_maxlen = HAL_PHYERR_PARAM_NOVAL;
 pe.pe_usefir128 = HAL_PHYERR_PARAM_NOVAL;
 pe.pe_blockradar = HAL_PHYERR_PARAM_NOVAL;
 pe.pe_enmaxrssi = HAL_PHYERR_PARAM_NOVAL;

 pe.pe_extchannel = HAL_PHYERR_PARAM_NOVAL;
 pe.pe_enrelpwr = HAL_PHYERR_PARAM_NOVAL;
 pe.pe_en_relstep_check = HAL_PHYERR_PARAM_NOVAL;

 switch (op) {
 case 141:
  pe.pe_enabled = param;
  break;
 case 139:
  pe.pe_firpwr = param;
  break;
 case 129:
  pe.pe_rrssi = param;
  break;
 case 138:
  pe.pe_height = param;
  break;
 case 134:
  pe.pe_prssi = param;
  break;
 case 137:
  pe.pe_inband = param;
  break;
 case 133:
  pe.pe_relpwr = param;
  break;
 case 131:
  pe.pe_relstep = param;
  break;
 case 136:
  pe.pe_maxlen = param;
  break;
 case 128:
  pe.pe_usefir128 = param;
  break;
 case 142:
  pe.pe_blockradar = param;
  break;
 case 135:
  pe.pe_enmaxrssi = param;
  break;
 case 140:
  pe.pe_extchannel = param;
  break;
 case 132:
  pe.pe_enrelpwr = param;
  break;
 case 130:
  pe.pe_en_relstep_check = param;
  break;
 }

 radar->atd.ad_id = DFS_SET_THRESH | ATH_DIAG_IN;
 radar->atd.ad_out_data = ((void*)0);
 radar->atd.ad_out_size = 0;
 radar->atd.ad_in_data = (caddr_t) &pe;
 radar->atd.ad_in_size = sizeof(HAL_PHYERR_PARAM);
 if (ioctl(radar->s, SIOCGATHPHYERR, &radar->atd) < 0)
  err(1, radar->atd.ad_name);
}
