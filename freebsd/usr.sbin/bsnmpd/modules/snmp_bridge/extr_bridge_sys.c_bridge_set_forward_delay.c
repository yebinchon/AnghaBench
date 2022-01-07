
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifdrv {int ifd_len; int ifd_cmd; struct ifbrparam* ifd_data; int ifd_name; } ;
struct ifbrparam {int ifbrp_fwddelay; } ;
struct bridge_if {int bridge_fwd_delay; int bif_name; } ;
typedef int int32_t ;
typedef int b_param ;


 int BRDGSFD ;
 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCSDRVSPEC ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifdrv*) ;
 int snmp_timeout2_sec (int ) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,int ,int ) ;
 int syslog (int ,char*,int ) ;

int
bridge_set_forward_delay(struct bridge_if *bif, int32_t fwd_delay)
{
 struct ifdrv ifd;
 struct ifbrparam b_param;

 strlcpy(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
 ifd.ifd_len = sizeof(b_param);
 ifd.ifd_data = &b_param;
 b_param.ifbrp_fwddelay = snmp_timeout2_sec(fwd_delay);
 ifd.ifd_cmd = BRDGSFD;

 if (ioctl(sock, SIOCSDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "set bridge param: ioctl(BRDGSFD) "
      "failed: %s", strerror(errno));
  return (-1);
 }

 bif->bridge_fwd_delay = b_param.ifbrp_fwddelay;
 return (0);
}
