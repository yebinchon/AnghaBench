
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifdrv {int ifd_len; struct ifbifconf* ifd_data; int ifd_cmd; int ifd_name; } ;
struct ifbreq {int dummy; } ;
struct ifbifconf {int ifbic_len; struct ifbreq* ifbic_req; } ;
struct bridge_if {int bif_name; } ;
typedef int int32_t ;
typedef int ifbc ;


 int BRDGGIFS ;
 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCGDRVSPEC ;
 int errno ;
 int free (struct ifbreq*) ;
 scalar_t__ ioctl (int ,int ,struct ifdrv*) ;
 scalar_t__ realloc (struct ifbreq*,int) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,int ,int ) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static int32_t
bridge_port_get_iflist(struct bridge_if *bif, struct ifbreq **buf)
{
 int n = 128;
 uint32_t len;
 struct ifbreq *ninbuf;
 struct ifbifconf ifbc;
 struct ifdrv ifd;

 *buf = ((void*)0);
 strlcpy(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
 ifd.ifd_cmd = BRDGGIFS;
 ifd.ifd_len = sizeof(ifbc);
 ifd.ifd_data = &ifbc;

 for ( ; ; ) {
  len = n * sizeof(struct ifbreq);
  if ((ninbuf = (struct ifbreq *)realloc(*buf, len)) == ((void*)0)) {
   syslog(LOG_ERR, "get bridge member list: "
       "realloc failed: %s", strerror(errno));
   free(*buf);
   *buf = ((void*)0);
   return (-1);
  }

  ifbc.ifbic_len = len;
  ifbc.ifbic_req = *buf = ninbuf;

  if (ioctl(sock, SIOCGDRVSPEC, &ifd) < 0) {
   syslog(LOG_ERR, "get bridge member list: ioctl "
       "(BRDGGIFS) failed: %s", strerror(errno));
   free(*buf);
   buf = ((void*)0);
   return (-1);
  }

  if ((ifbc.ifbic_len + sizeof(struct ifbreq)) < len)
   break;

  n += 64;
 }

 return (ifbc.ifbic_len);
}
