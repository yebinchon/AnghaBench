
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_12__ {struct ifnet* rcvif; int len; } ;
struct mbuf {TYPE_5__ m_pkthdr; int m_len; } ;
struct m_tag {int dummy; } ;
struct ifnet {int if_bpf; } ;
struct TYPE_10__ {int fc; } ;
struct TYPE_8__ {struct ifnet* fwip_ifp; } ;
struct fwip_softc {TYPE_3__ fd; TYPE_1__ fw_softc; } ;
struct TYPE_13__ {int dest_lo; scalar_t__ tcode; int src; int len; scalar_t__ dest_hi; } ;
struct TYPE_14__ {TYPE_6__ wreqb; } ;
struct fw_pkt {TYPE_7__ mode; } ;
struct TYPE_9__ {struct fw_pkt hdr; } ;
struct fw_xfer {TYPE_2__ recv; struct mbuf* mbuf; scalar_t__ sc; } ;
struct TYPE_11__ {int lo; int hi; } ;
struct fw_device {TYPE_4__ eui; } ;


 int FWRCODE_COMPLETE ;
 int FWRCODE_ER_ADDR ;
 int FWRCODE_ER_TYPE ;
 scalar_t__ FWTCODE_WREQB ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int INET_FIFO ;
 int MTAG_FIREWIRE ;
 int MTAG_FIREWIRE_SENDER_EUID ;
 int M_NOWAIT ;
 scalar_t__ bpf_peers_present (int ) ;
 int firewire_input (struct ifnet*,struct mbuf*,int) ;
 struct fw_device* fw_noderesolve_nodeid (int ,int) ;
 int fwip_unicast_input_recycle (struct fwip_softc*,struct fw_xfer*) ;
 scalar_t__ htonl (int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 struct m_tag* m_tag_alloc (int ,int ,int,int ) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;

__attribute__((used)) static void
fwip_unicast_input(struct fw_xfer *xfer)
{
 uint64_t address;
 struct mbuf *m;
 struct m_tag *mtag;
 struct ifnet *ifp;
 struct fwip_softc *fwip;
 struct fw_pkt *fp;

 int rtcode;

 fwip = (struct fwip_softc *)xfer->sc;
 ifp = fwip->fw_softc.fwip_ifp;
 m = xfer->mbuf;
 xfer->mbuf = 0;
 fp = &xfer->recv.hdr;





 address = ((uint64_t)fp->mode.wreqb.dest_hi << 32)
  | fp->mode.wreqb.dest_lo;
 if (fp->mode.wreqb.tcode != FWTCODE_WREQB) {
  rtcode = FWRCODE_ER_TYPE;
 } else if (address != INET_FIFO) {
  rtcode = FWRCODE_ER_ADDR;
 } else {
  rtcode = FWRCODE_COMPLETE;
 }





 fwip_unicast_input_recycle(fwip, xfer);




 if (rtcode != FWRCODE_COMPLETE) {
  m_freem(m);
  if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
  return;
 }

 if (bpf_peers_present(ifp->if_bpf)) {



  mtag = m_tag_alloc(MTAG_FIREWIRE, MTAG_FIREWIRE_SENDER_EUID,
      2*sizeof(uint32_t), M_NOWAIT);
  if (mtag) {

   struct fw_device *fd;
   uint32_t *p = (uint32_t *) (mtag + 1);
   fd = fw_noderesolve_nodeid(fwip->fd.fc,
       fp->mode.wreqb.src & 0x3f);
   if (fd) {
    p[0] = htonl(fd->eui.hi);
    p[1] = htonl(fd->eui.lo);
   } else {
    p[0] = 0;
    p[1] = 0;
   }
   m_tag_prepend(m, mtag);
  }
 }






 m->m_len = m->m_pkthdr.len = fp->mode.wreqb.len;
 m->m_pkthdr.rcvif = ifp;
 firewire_input(ifp, m, fp->mode.wreqb.src);
 if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
}
