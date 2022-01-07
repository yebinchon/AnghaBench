
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* ad_name; int ad_out_size; scalar_t__ ad_out_data; int ad_id; } ;
struct radarhandler {scalar_t__ s; int ah_devid; TYPE_2__ atd; } ;
typedef int revs ;
typedef scalar_t__ caddr_t ;
struct TYPE_3__ {int ah_devid; } ;
typedef TYPE_1__ HAL_REVS ;


 int AF_INET ;
 int HAL_DIAG_REVS ;
 int SIOCGATHDIAG ;
 int SOCK_DGRAM ;
 scalar_t__ ioctl (scalar_t__,int ,TYPE_2__*) ;
 scalar_t__ socket (int ,int ,int ) ;
 int strncpy (char*,char const*,int) ;
 int warn (char*) ;

int
radar_opendev(struct radarhandler *radar, const char *devid)
{
 HAL_REVS revs;

 radar->s = socket(AF_INET, SOCK_DGRAM, 0);
 if (radar->s < 0) {
  warn("socket");
  return 0;
 }

 strncpy(radar->atd.ad_name, devid, sizeof (radar->atd.ad_name));


 radar->atd.ad_id = HAL_DIAG_REVS;
 radar->atd.ad_out_data = (caddr_t) &revs;
 radar->atd.ad_out_size = sizeof(revs);
 if (ioctl(radar->s, SIOCGATHDIAG, &radar->atd) < 0) {
  warn(radar->atd.ad_name);
  return 0;
 }
 radar->ah_devid = revs.ah_devid;
 return 1;
}
