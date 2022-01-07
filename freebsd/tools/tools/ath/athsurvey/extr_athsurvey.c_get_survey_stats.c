
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ath_diag {int ad_id; int ad_out_size; int ad_name; scalar_t__ ad_out_data; int * ad_in_data; scalar_t__ ad_in_size; } ;
typedef scalar_t__ caddr_t ;
typedef int atd ;
typedef int HAL_CHANNEL_SURVEY ;


 int ATH_DIAG_OUT ;
 int HAL_DIAG_CHANSURVEY ;
 int SIOCGATHDIAG ;
 int err (int,char*,int ) ;
 scalar_t__ ioctl (int,int ,struct ath_diag*) ;
 int memset (struct ath_diag*,char,int) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static int
get_survey_stats(int s, const char *ifname, HAL_CHANNEL_SURVEY *hs)
{
 uint16_t eedata;
 struct ath_diag atd;

 memset(&atd, '\0', sizeof(atd));

 atd.ad_id = HAL_DIAG_CHANSURVEY | ATH_DIAG_OUT;
 atd.ad_in_size = 0;
 atd.ad_in_data = ((void*)0);
 atd.ad_out_size = sizeof(HAL_CHANNEL_SURVEY);
 atd.ad_out_data = (caddr_t) hs;
 strncpy(atd.ad_name, ifname, sizeof(atd.ad_name));

 if (ioctl(s, SIOCGATHDIAG, &atd) < 0) {
  err(1, "ioctl: %s", atd.ad_name);
  return (0);
 }
 return (1);
}
