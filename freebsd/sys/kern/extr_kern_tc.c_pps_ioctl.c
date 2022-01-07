
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_7__ {int clear_timestamp; int assert_timestamp; } ;
struct TYPE_8__ {int mode; int api_version; } ;
struct TYPE_6__ {int current_mode; int clear_timestamp; int assert_timestamp; } ;
struct pps_state {int ppscap; int kcmode; TYPE_3__ ppsinfo; TYPE_4__ ppsparam; TYPE_2__ ppsinfo_ffc; } ;
struct pps_kcbind_args {int edge; int kernel_consumer; int tsformat; } ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct pps_fetch_ffc_args {TYPE_2__ pps_info_buf_ffc; TYPE_1__ timeout; int tsformat; } ;
struct pps_fetch_args {int dummy; } ;
typedef TYPE_4__ pps_params_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENOIOCTL ;
 int EOPNOTSUPP ;
 int KASSERT (int ,char*) ;
 int KCMODE_ABIFLAG ;
 int KCMODE_EDGEMASK ;
 int PPS_API_VERS_1 ;
 int PPS_KC_HARDPPS ;


 int PPS_TSCLK_MASK ;
 int PPS_TSFMT_TSPEC ;
 int pps_fetch (struct pps_fetch_args*,struct pps_state*) ;

int
pps_ioctl(u_long cmd, caddr_t data, struct pps_state *pps)
{
 pps_params_t *app;
 struct pps_fetch_args *fapi;







 KASSERT(pps != ((void*)0), ("NULL pps pointer in pps_ioctl"));
 switch (cmd) {
 case 137:
  return (0);
 case 136:
  return (0);
 case 130:
  app = (pps_params_t *)data;
  if (app->mode & ~pps->ppscap)
   return (EINVAL);





  pps->ppsparam = *app;
  return (0);
 case 132:
  app = (pps_params_t *)data;
  *app = pps->ppsparam;
  app->api_version = PPS_API_VERS_1;
  return (0);
 case 133:
  *(int*)data = pps->ppscap;
  return (0);
 case 135:
  fapi = (struct pps_fetch_args *)data;
  return (pps_fetch(fapi, pps));
 case 131:
  return (EOPNOTSUPP);

 default:
  return (ENOIOCTL);
 }
}
