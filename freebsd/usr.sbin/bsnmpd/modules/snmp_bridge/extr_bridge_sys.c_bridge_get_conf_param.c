
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifdrv {int ifd_len; int ifd_cmd; struct ifbrparam* ifd_data; int ifd_name; } ;
struct ifbrparam {int ifbrp_maxage; int ifbrp_hellotime; int ifbrp_fwddelay; int ifbrp_csize; int ifbrp_ctime; int ifbrp_cexceeded; int ifbrp_prio; } ;
struct bridge_if {int bridge_max_age; int bridge_hello_time; int bridge_fwd_delay; int max_addrs; int age_time; int lrnt_drops; int priority; int bif_name; } ;
typedef int b_param ;


 int BRDGGCACHE ;
 int BRDGGFD ;
 int BRDGGHT ;
 int BRDGGMA ;
 int BRDGGPRI ;
 int BRDGGRTE ;
 int BRDGGTO ;
 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCGDRVSPEC ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifdrv*) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,int ,int ) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static int
bridge_get_conf_param(struct bridge_if *bif)
{
 struct ifdrv ifd;
 struct ifbrparam b_param;

 strlcpy(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
 ifd.ifd_len = sizeof(b_param);
 ifd.ifd_data = &b_param;


 ifd.ifd_cmd = BRDGGPRI;
 if (ioctl(sock, SIOCGDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "update bridge: ioctl(BRDGGPRI) failed: %s",
      strerror(errno));
  return (-1);
 }

 bif->priority = b_param.ifbrp_prio;


 ifd.ifd_cmd = BRDGGMA;
 if (ioctl(sock, SIOCGDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "update bridge: ioctl(BRDGGMA) failed: %s",
      strerror(errno));
  return (-1);
 }


 bif->bridge_max_age = 100 * b_param.ifbrp_maxage;


 ifd.ifd_cmd = BRDGGHT;
 if (ioctl(sock, SIOCGDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "update bridge: ioctl(BRDGGHT) failed: %s",
      strerror(errno));
  return (-1);
 }
 bif->bridge_hello_time = 100 * b_param.ifbrp_hellotime;


 ifd.ifd_cmd = BRDGGFD;
 if (ioctl(sock, SIOCGDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "update bridge: ioctl(BRDGGFD) failed: %s",
      strerror(errno));
  return (-1);
 }
 bif->bridge_fwd_delay = 100 * b_param.ifbrp_fwddelay;


 ifd.ifd_cmd = BRDGGRTE;
 if (ioctl(sock, SIOCGDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "update bridge: ioctl(BRDGGRTE) failed: %s",
      strerror(errno));
  return (-1);
 }
 bif->lrnt_drops = b_param.ifbrp_cexceeded;


 ifd.ifd_cmd = BRDGGTO;
 if (ioctl(sock, SIOCGDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "update bridge: ioctl(BRDGGTO) failed: %s",
      strerror(errno));
  return (-1);
 }
 bif->age_time = b_param.ifbrp_ctime;


 ifd.ifd_cmd = BRDGGCACHE;
 if (ioctl(sock, SIOCGDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "update bridge: ioctl(BRDGGCACHE) "
      "failed: %s", strerror(errno));
  return (-1);
 }
 bif->max_addrs = b_param.ifbrp_csize;

 return (0);
}
