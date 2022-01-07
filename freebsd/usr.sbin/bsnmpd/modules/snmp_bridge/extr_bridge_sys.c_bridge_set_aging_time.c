
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ifdrv {int ifd_len; int ifd_cmd; struct ifbrparam* ifd_data; int ifd_name; } ;
struct ifbrparam {scalar_t__ ifbrp_ctime; } ;
struct bridge_if {scalar_t__ age_time; int bif_name; } ;
typedef scalar_t__ int32_t ;
typedef int b_param ;


 int BRDGSTO ;
 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCSDRVSPEC ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifdrv*) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,int ,int ) ;
 int syslog (int ,char*,int ) ;

int
bridge_set_aging_time(struct bridge_if *bif, int32_t age_time)
{
 struct ifdrv ifd;
 struct ifbrparam b_param;

 strlcpy(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
 ifd.ifd_len = sizeof(b_param);
 ifd.ifd_data = &b_param;
 b_param.ifbrp_ctime = (uint32_t) age_time;
 ifd.ifd_cmd = BRDGSTO;

 if (ioctl(sock, SIOCSDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "set bridge param: ioctl(BRDGSTO) "
      "failed: %s", strerror(errno));
  return (-1);
 }

 bif->age_time = age_time;
 return (0);
}
