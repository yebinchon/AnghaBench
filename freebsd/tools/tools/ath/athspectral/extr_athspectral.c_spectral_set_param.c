
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spectralhandler {int dummy; } ;


 int DFS_PARAM_BLOCKRADAR ;
 int DFS_PARAM_ENABLE ;
 int DFS_PARAM_EN_EXTCH ;
 int DFS_PARAM_FIRPWR ;
 int DFS_PARAM_HEIGHT ;
 int DFS_PARAM_INBAND ;
 int DFS_PARAM_MAXLEN ;
 int DFS_PARAM_MAXRSSI_EN ;
 int DFS_PARAM_PRSSI ;
 int DFS_PARAM_RELPWR ;
 int DFS_PARAM_RELPWR_EN ;
 int DFS_PARAM_RELSTEP ;
 int DFS_PARAM_RELSTEP_EN ;
 int DFS_PARAM_RRSSI ;
 int DFS_PARAM_USEFIR128 ;
 int SPECTRAL_PARAM_FFT_PERIOD ;
 int SPECTRAL_PARAM_SS_COUNT ;
 int SPECTRAL_PARAM_SS_PERIOD ;
 int SPECTRAL_PARAM_SS_SHORT_RPT ;
 int SPECTRAL_PARAM_SS_SPECTRAL_PRI ;
 int atoi (char const*) ;
 int spectralset (struct spectralhandler*,int ,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
spectral_set_param(struct spectralhandler *spectral, const char *param,
    const char *val)
{
 int v;

 v = atoi(val);

 if (strcmp(param, "ss_short_report") == 0) {
  spectralset(spectral, SPECTRAL_PARAM_SS_SHORT_RPT, v);
 } else if (strcmp(param, "ss_fft_period") == 0) {
  spectralset(spectral, SPECTRAL_PARAM_FFT_PERIOD, v);
 } else if (strcmp(param, "ss_period") == 0) {
  spectralset(spectral, SPECTRAL_PARAM_SS_PERIOD, v);
 } else if (strcmp(param, "ss_count") == 0) {
  spectralset(spectral, SPECTRAL_PARAM_SS_COUNT, v);
 } else if (strcmp(param, "ss_spectral_pri") == 0) {
  spectralset(spectral, SPECTRAL_PARAM_SS_SPECTRAL_PRI, v);
 } else {
  return (0);
 }
 return 1;
}
