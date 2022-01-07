
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int sval ;
struct wlan_config {int mesh_retryto; int mesh_holdingto; int mesh_confirmto; int mesh_maxretries; int hwmp_targetonly; int hwmp_replyforward; int hwmp_pathlifetime; int hwmp_roottimeout; int hwmp_rootint; int hwmp_rannint; int hwmp_inact; } ;
typedef int mib_name ;
typedef int int32_t ;
typedef enum wlan_syscl { ____Placeholder_wlan_syscl } wlan_syscl ;


 int LOG_ERR ;
 int WLAN_SYSCTL_MAX ;
 int abort () ;
 int errno ;
 int strerror (int ) ;
 int strlcat (char*,int ,int) ;
 int strlcpy (char*,int ,int) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int*,size_t) ;
 int syslog (int ,char*,char*,int ) ;
 int * wlan_sysctl ;
 int wlan_sysctl_name ;

int32_t
wlan_do_sysctl(struct wlan_config *cfg, enum wlan_syscl which, int set)
{
 char mib_name[100];
 int val, sval;
 size_t len, vlen;

 if (set) {
  vlen = sizeof(sval);
  switch (which) {
  case 128:
   sval = cfg->mesh_retryto;
   break;
  case 130:
   sval = cfg->mesh_holdingto;
   break;
  case 131:
   sval = cfg->mesh_confirmto;
   break;
  case 129:
   sval = cfg->mesh_maxretries;
   break;
  case 132:
   sval = cfg->hwmp_targetonly;
   break;
  case 135:
   sval = cfg->hwmp_replyforward;
   break;
  case 137:
   sval = cfg->hwmp_pathlifetime;
   break;
  case 133:
   sval = cfg->hwmp_roottimeout;
   break;
  case 134:
   sval = cfg->hwmp_rootint;
   break;
  case 136:
   sval = cfg->hwmp_rannint;
   break;
  case 138:
   sval = cfg->hwmp_inact;
   break;
  default:
   return (-1);
  }
 } else {
  if (which >= WLAN_SYSCTL_MAX)
   return (-1);
  vlen = 0;
 }

 strlcpy(mib_name, wlan_sysctl_name, sizeof(mib_name));
 strlcat(mib_name, wlan_sysctl[which], sizeof(mib_name));
 len = sizeof (val);

 if (sysctlbyname(mib_name, &val, &len, (set? &sval : ((void*)0)), vlen) < 0) {
  syslog(LOG_ERR, "sysctl(%s) failed - %s", mib_name,
      strerror(errno));
  return (-1);
 }

 switch (which) {
 case 128:
  cfg->mesh_retryto = val;
  break;
 case 130:
  cfg->mesh_holdingto = val;
  break;
 case 131:
  cfg->mesh_confirmto = val;
  break;
 case 129:
  cfg->mesh_maxretries = val;
  break;
 case 132:
  cfg->hwmp_targetonly = val;
  break;
 case 135:
  cfg->hwmp_replyforward = val;
  break;
 case 137:
  cfg->hwmp_pathlifetime = val;
  break;
 case 133:
  cfg->hwmp_roottimeout = val;
  break;
 case 134:
  cfg->hwmp_rootint = val;
  break;
 case 136:
  cfg->hwmp_rannint = val;
  break;
 case 138:
  cfg->hwmp_inact = val;
  break;
 default:

  abort();
 }

 return (0);
}
