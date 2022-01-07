
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifdrv {int ifd_len; struct ifbpstpconf* ifd_data; int ifd_cmd; int ifd_name; } ;
struct ifbpstpreq {int dummy; } ;
struct ifbpstpconf {int ifbpstp_len; struct ifbpstpreq* ifbpstp_req; } ;
struct bridge_if {int bif_name; } ;
typedef int int32_t ;
typedef int ifbstp ;


 int BRDGGIFSSTP ;
 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCGDRVSPEC ;
 int errno ;
 int free (struct ifbpstpreq*) ;
 scalar_t__ ioctl (int ,int ,struct ifdrv*) ;
 scalar_t__ realloc (struct ifbpstpreq*,int) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,int ,int ) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static int32_t
bridge_port_get_ifstplist(struct bridge_if *bif, struct ifbpstpreq **buf)
{
 int n = 128;
 uint32_t len;
 struct ifbpstpreq *ninbuf;
 struct ifbpstpconf ifbstp;
 struct ifdrv ifd;

 *buf = ((void*)0);
 strlcpy(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
 ifd.ifd_cmd = BRDGGIFSSTP;
 ifd.ifd_len = sizeof(ifbstp);
 ifd.ifd_data = &ifbstp;

 for ( ; ; ) {
  len = n * sizeof(struct ifbpstpreq);
  if ((ninbuf = (struct ifbpstpreq *)
      realloc(*buf, len)) == ((void*)0)) {
   syslog(LOG_ERR, "get bridge STP ports list: "
       "realloc failed: %s", strerror(errno));
   free(*buf);
   *buf = ((void*)0);
   return (-1);
  }

  ifbstp.ifbpstp_len = len;
  ifbstp.ifbpstp_req = *buf = ninbuf;

  if (ioctl(sock, SIOCGDRVSPEC, &ifd) < 0) {
   syslog(LOG_ERR, "get bridge STP ports list: ioctl "
       "(BRDGGIFSSTP) failed: %s", strerror(errno));
   free(*buf);
   buf = ((void*)0);
   return (-1);
  }

  if ((ifbstp.ifbpstp_len + sizeof(struct ifbpstpreq)) < len)
   break;

  n += 64;
 }

 return (ifbstp.ifbpstp_len);
}
