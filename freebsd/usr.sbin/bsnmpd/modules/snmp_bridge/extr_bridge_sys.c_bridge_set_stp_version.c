
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifdrv {int ifd_len; int ifd_cmd; struct ifbrparam* ifd_data; int ifd_name; } ;
struct ifbrparam {int ifbrp_proto; } ;
struct bridge_if {int stp_version; int bif_name; } ;
typedef int int32_t ;
typedef int b_param ;


 int BRDGSPROTO ;
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
bridge_set_stp_version(struct bridge_if *bif, int32_t stp_proto)
{
 struct ifdrv ifd;
 struct ifbrparam b_param;

 strlcpy(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
 ifd.ifd_len = sizeof(b_param);
 ifd.ifd_data = &b_param;
 b_param.ifbrp_proto = stp_proto;
 ifd.ifd_cmd = BRDGSPROTO;

 if (ioctl(sock, SIOCSDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "set bridge param: ioctl(BRDGSPROTO) "
      "failed: %s", strerror(errno));
  return (-1);
 }

 bif->stp_version = b_param.ifbrp_proto;
 return (0);
}
