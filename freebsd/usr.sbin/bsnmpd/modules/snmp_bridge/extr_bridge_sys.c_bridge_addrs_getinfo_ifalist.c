
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifdrv {int ifd_len; struct ifbaconf* ifd_data; int ifd_cmd; int ifd_name; } ;
struct ifbareq {int dummy; } ;
struct ifbaconf {int ifbac_len; struct ifbareq* ifbac_req; } ;
struct bridge_if {int bif_name; } ;
typedef int int32_t ;
typedef int bac ;


 int BRDGRTS ;
 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCGDRVSPEC ;
 int errno ;
 int free (struct ifbareq*) ;
 scalar_t__ ioctl (int ,int ,struct ifdrv*) ;
 scalar_t__ realloc (struct ifbareq*,int) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,int ,int ) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static int32_t
bridge_addrs_getinfo_ifalist(struct bridge_if *bif, struct ifbareq **buf)
{
 int n = 128;
 uint32_t len;
 struct ifbareq *ninbuf;
 struct ifbaconf bac;
 struct ifdrv ifd;

 *buf = ((void*)0);
 strlcpy(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
 ifd.ifd_cmd = BRDGRTS;
 ifd.ifd_len = sizeof(bac);
 ifd.ifd_data = &bac;

 for ( ; ; ) {
  len = n * sizeof(struct ifbareq);
  if ((ninbuf = (struct ifbareq *)realloc(*buf, len)) == ((void*)0)) {
   syslog(LOG_ERR, "get bridge address list: "
       " realloc failed: %s", strerror(errno));
   free(*buf);
   *buf = ((void*)0);
   return (-1);
  }

  bac.ifbac_len = len;
  bac.ifbac_req = *buf = ninbuf;

  if (ioctl(sock, SIOCGDRVSPEC, &ifd) < 0) {
   syslog(LOG_ERR, "get bridge address list: "
       "ioctl(BRDGRTS) failed: %s", strerror(errno));
   free(*buf);
   buf = ((void*)0);
   return (-1);
  }

  if ((bac.ifbac_len + sizeof(struct ifbareq)) < len)
   break;

  n += 64;
 }

 return (bac.ifbac_len);
}
