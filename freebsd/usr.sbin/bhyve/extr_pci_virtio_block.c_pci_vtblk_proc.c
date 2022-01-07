
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
struct vqueue_info {int dummy; } ;
struct virtio_blk_hdr {int vbh_sector; int vbh_type; } ;
struct pci_vtblk_softc {int vbsc_ident; int bc; struct pci_vtblk_ioreq* vbsc_ios; } ;
struct TYPE_5__ {int br_iovcnt; int br_offset; scalar_t__ br_resid; int br_iov; } ;
struct pci_vtblk_ioreq {TYPE_1__ io_req; struct virtio_blk_hdr* io_status; } ;
struct iovec {int iov_len; struct virtio_blk_hdr* iov_base; } ;
typedef scalar_t__ ssize_t ;


 int BLOCKIF_IOV_MAX ;
 int DEV_BSIZE ;
 int DPRINTF (char*) ;
 int EOPNOTSUPP ;
 int MIN (int,int) ;
 int VBH_FLAG_BARRIER ;





 size_t VRING_DESC_F_WRITE ;
 int assert (int) ;
 int blockif_flush (int ,TYPE_1__*) ;
 int blockif_read (int ,TYPE_1__*) ;
 int blockif_write (int ,TYPE_1__*) ;
 int memcpy (int *,struct iovec*,int) ;
 int memset (struct virtio_blk_hdr*,int ,int) ;
 int pci_vtblk_done (TYPE_1__*,int ) ;
 int strncpy (struct virtio_blk_hdr*,int ,int ) ;
 int vq_getchain (struct vqueue_info*,size_t*,struct iovec*,int,size_t*) ;

__attribute__((used)) static void
pci_vtblk_proc(struct pci_vtblk_softc *sc, struct vqueue_info *vq)
{
 struct virtio_blk_hdr *vbh;
 struct pci_vtblk_ioreq *io;
 int i, n;
 int err;
 ssize_t iolen;
 int writeop, type;
 struct iovec iov[BLOCKIF_IOV_MAX + 2];
 uint16_t idx, flags[BLOCKIF_IOV_MAX + 2];

 n = vq_getchain(vq, &idx, iov, BLOCKIF_IOV_MAX + 2, flags);
 assert(n >= 2 && n <= BLOCKIF_IOV_MAX + 2);

 io = &sc->vbsc_ios[idx];
 assert((flags[0] & VRING_DESC_F_WRITE) == 0);
 assert(iov[0].iov_len == sizeof(struct virtio_blk_hdr));
 vbh = iov[0].iov_base;
 memcpy(&io->io_req.br_iov, &iov[1], sizeof(struct iovec) * (n - 2));
 io->io_req.br_iovcnt = n - 2;
 io->io_req.br_offset = vbh->vbh_sector * DEV_BSIZE;
 io->io_status = iov[--n].iov_base;
 assert(iov[n].iov_len == 1);
 assert(flags[n] & VRING_DESC_F_WRITE);






 type = vbh->vbh_type & ~VBH_FLAG_BARRIER;
 writeop = (type == 128);

 iolen = 0;
 for (i = 1; i < n; i++) {






  assert(((flags[i] & VRING_DESC_F_WRITE) == 0) == writeop);
  iolen += iov[i].iov_len;
 }
 io->io_req.br_resid = iolen;

 DPRINTF(("virtio-block: %s op, %zd bytes, %d segs, offset %ld\n\r",
   writeop ? "write" : "read/ident", iolen, i - 1,
   io->io_req.br_offset));

 switch (type) {
 case 129:
  err = blockif_read(sc->bc, &io->io_req);
  break;
 case 128:
  err = blockif_write(sc->bc, &io->io_req);
  break;
 case 132:
 case 131:
  err = blockif_flush(sc->bc, &io->io_req);
  break;
 case 130:


  memset(iov[1].iov_base, 0, iov[1].iov_len);
  strncpy(iov[1].iov_base, sc->vbsc_ident,
      MIN(iov[1].iov_len, sizeof(sc->vbsc_ident)));
  pci_vtblk_done(&io->io_req, 0);
  return;
 default:
  pci_vtblk_done(&io->io_req, EOPNOTSUPP);
  return;
 }
 assert(err == 0);
}
