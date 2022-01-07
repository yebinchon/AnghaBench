
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ifdrv {int ifd_len; int ifd_cmd; struct ifbreq* ifd_data; int ifd_name; } ;
struct ifbreq {int ifbr_ifsflags; int ifbr_ifsname; } ;
struct bridge_port {scalar_t__ admin_edge; char const* p_name; } ;
typedef int b_req ;


 int BRDGGIFFLGS ;
 int BRDGSIFFLGS ;
 int IFBIF_BSTP_AUTOEDGE ;
 int IFBIF_BSTP_EDGE ;
 int LOG_ERR ;
 int SIOCGDRVSPEC ;
 int SIOCSDRVSPEC ;
 scalar_t__ TruthValue_true ;
 int bzero (struct ifbreq*,int) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifdrv*) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,char const*,int) ;
 int syslog (int ,char*,char const*,int ) ;

int
bridge_port_set_admin_edge(const char *bif_name, struct bridge_port *bp,
    uint32_t enable)
{
 struct ifdrv ifd;
 struct ifbreq b_req;

 if (bp->admin_edge == enable)
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

 if (enable == TruthValue_true) {
  b_req.ifbr_ifsflags &= ~IFBIF_BSTP_AUTOEDGE;
  b_req.ifbr_ifsflags |= IFBIF_BSTP_EDGE;
 } else
  b_req.ifbr_ifsflags &= ~IFBIF_BSTP_EDGE;

 ifd.ifd_cmd = BRDGSIFFLGS;
 if (ioctl(sock, SIOCSDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "set member %s param: ioctl(BRDGSIFFLGS) "
      "failed: %s", bp->p_name, strerror(errno));
  return (-1);
 }

 bp->admin_edge = enable;

 return (0);
}
