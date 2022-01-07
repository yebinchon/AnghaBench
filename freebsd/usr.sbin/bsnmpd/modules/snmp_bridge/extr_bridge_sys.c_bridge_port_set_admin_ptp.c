
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifdrv {int ifd_len; int ifd_cmd; struct ifbreq* ifd_data; int ifd_name; } ;
struct ifbreq {int ifbr_ifsflags; int ifbr_ifsname; } ;
struct bridge_port {int admin_ptp; char const* p_name; } ;
typedef int b_req ;


 int BRDGGIFFLGS ;
 int BRDGSIFFLGS ;
 int IFBIF_BSTP_AUTOPTP ;
 int IFBIF_BSTP_PTP ;
 int LOG_ERR ;
 int SIOCGDRVSPEC ;
 int SIOCSDRVSPEC ;



 int bzero (struct ifbreq*,int) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifdrv*) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,char const*,int) ;
 int syslog (int ,char*,char const*,int ) ;

int
bridge_port_set_admin_ptp(const char *bif_name, struct bridge_port *bp,
    uint32_t admin_ptp)
{
 struct ifdrv ifd;
 struct ifbreq b_req;

 if (bp->admin_ptp == admin_ptp)
  return (0);

 bzero(&b_req, sizeof(b_req));
 strlcpy(ifd.ifd_name, bif_name, sizeof(ifd.ifd_name));
 ifd.ifd_len = sizeof(b_req);
 ifd.ifd_data = &b_req;
 strlcpy(b_req.ifbr_ifsname, bp->p_name, sizeof(b_req.ifbr_ifsname));
 ifd.ifd_cmd = BRDGGIFFLGS;

 if (ioctl(sock, SIOCGDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "get member %s param: ioctl(BRDGGIFFLGS) "
      "failed: %s", bp->p_name, strerror(errno));
  return (-1);
 }

 switch (admin_ptp) {
  case 128:
   b_req.ifbr_ifsflags &= ~IFBIF_BSTP_AUTOPTP;
   b_req.ifbr_ifsflags |= IFBIF_BSTP_PTP;
   break;
  case 129:
   b_req.ifbr_ifsflags &= ~IFBIF_BSTP_AUTOPTP;
   b_req.ifbr_ifsflags &= ~IFBIF_BSTP_PTP;
   break;
  case 130:
   b_req.ifbr_ifsflags |= IFBIF_BSTP_AUTOPTP;
   break;
 }

 ifd.ifd_cmd = BRDGSIFFLGS;
 if (ioctl(sock, SIOCSDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "set member %s param: ioctl(BRDGSIFFLGS) "
      "failed: %s", bp->p_name, strerror(errno));
  return (-1);
 }

 bp->admin_ptp = admin_ptp;
 return (0);
}
