
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ad_id; int ad_out_size; int ad_name; scalar_t__ ad_out_data; scalar_t__ ad_in_size; int * ad_in_data; } ;
struct radarhandler {TYPE_3__ atd; int s; } ;
typedef int pe ;
typedef scalar_t__ caddr_t ;
struct TYPE_4__ {int pe_enabled; int pe_firpwr; int pe_rrssi; int pe_height; int pe_prssi; int pe_inband; int pe_relpwr; int pe_relstep; int pe_maxlen; int pe_usefir128; int pe_blockradar; int pe_enmaxrssi; int pe_extchannel; int pe_enrelpwr; int pe_en_relstep_check; } ;
typedef TYPE_1__ HAL_PHYERR_PARAM ;


 int ATH_DIAG_DYN ;
 int DFS_GET_THRESH ;
 int SIOCGATHPHYERR ;
 int err (int,int ) ;
 scalar_t__ ioctl (int ,int ,TYPE_3__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
radar_get(struct radarhandler *radar)
{
 HAL_PHYERR_PARAM pe;

 radar->atd.ad_id = DFS_GET_THRESH | ATH_DIAG_DYN;
 memset(&pe, 0, sizeof(pe));

 radar->atd.ad_in_data = ((void*)0);
 radar->atd.ad_in_size = 0;
 radar->atd.ad_out_data = (caddr_t) &pe;
 radar->atd.ad_out_size = sizeof(pe);

 if (ioctl(radar->s, SIOCGATHPHYERR, &radar->atd) < 0)
  err(1, radar->atd.ad_name);

 printf("Radar parameters (raw):\n");
 printf("    pe_enabled: %d\n", pe.pe_enabled);
 printf("    pe_firpwr: %d\n", pe.pe_firpwr);
 printf("    pe_rrssi: %d\n", pe.pe_rrssi);
 printf("    pe_height: %d\n", pe.pe_height);
 printf("    pe_prssi: %d\n", pe.pe_prssi);
 printf("    pe_inband: %d\n", pe.pe_inband);
 printf("    pe_relpwr: %d\n", pe.pe_relpwr);
 printf("    pe_relstep: %d\n", pe.pe_relstep);
 printf("    pe_maxlen: %d\n", pe.pe_maxlen);
 printf("    pe_usefir128: %d\n", pe.pe_usefir128);
 printf("    pe_blockradar: %d\n", pe.pe_blockradar);
 printf("    pe_enmaxrssi: %d\n", pe.pe_enmaxrssi);
 printf("    pe_extchannel: %d\n", pe.pe_extchannel);
 printf("    pe_enrelpwr: %d\n", pe.pe_enrelpwr);
 printf("    pe_en_relstep_check: %d\n", pe.pe_en_relstep_check);
}
