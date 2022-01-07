
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


typedef char uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct iovec {char* iov_base; int iov_len; } ;
struct fwohcidb_tr {int bus_addr; char* buf; TYPE_6__* db; int dma_map; } ;
struct fwohci_trailer {int dummy; } ;
struct TYPE_10__ {int dev; int status; } ;
struct TYPE_14__ {int psize; } ;
struct fwohci_dbch {int buf_offset; TYPE_7__ xferq; struct fwohcidb_tr* top; struct fwohcidb_tr* pdb_tr; int dmat; int am; } ;
struct fwohci_softc {TYPE_3__ fc; struct fwohci_dbch arrs; struct fwohci_dbch arrq; } ;
struct fw_rcv_buf {int nvec; int spd; struct iovec* vec; TYPE_3__* fc; } ;
struct TYPE_8__ {int tcode; } ;
struct TYPE_9__ {TYPE_1__ common; } ;
struct fw_pkt {TYPE_2__ mode; } ;
typedef int pktbuf ;
typedef char* caddr_t ;
struct TYPE_11__ {int res; } ;
struct TYPE_12__ {TYPE_4__ desc; } ;
struct TYPE_13__ {TYPE_5__ db; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int FWBUSINIT ;
 int FWBUSRESET ;



 int FWOHCI_DMA_READ (int) ;
 int OHCI_ARQOFF ;
 int OHCI_ARSOFF ;
 int OHCI_CNTL_DMA_ACTIVE ;
 int OHCI_CNTL_DMA_WAKE ;
 int OHCI_COUNT_MASK ;
 int OHCI_DMACTL (int) ;
 int OHCI_STATUS_SHIFT ;
 int OREAD (struct fwohci_softc*,int ) ;
 int OWRITE (struct fwohci_softc*,int ,int ) ;
 struct fwohcidb_tr* STAILQ_NEXT (struct fwohcidb_tr*,int ) ;
 int bcopy (char*,char*,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*,int,...) ;
 scalar_t__ firewire_debug ;
 int fw_rcv (struct fw_rcv_buf*) ;
 int fwdma_sync_multiseg_all (int ,int ) ;
 int fwohci_arcv_free_buf (struct fwohci_softc*,struct fwohci_dbch*,struct fwohcidb_tr*,int,int) ;
 int fwohci_arcv_swap (struct fw_pkt*,int) ;
 int fwohci_get_plen (struct fwohci_softc*,struct fwohci_dbch*,struct fw_pkt*) ;
 int * fwohcicode ;
 int link ;
 int printf (char*,...) ;
 int splfw () ;
 int splx (int) ;

__attribute__((used)) static void
fwohci_arcv(struct fwohci_softc *sc, struct fwohci_dbch *dbch, int count)
{
 struct fwohcidb_tr *db_tr;
 struct iovec vec[2];
 struct fw_pkt pktbuf;
 int nvec;
 struct fw_pkt *fp;
 uint8_t *ld;
 uint32_t stat, off, status, event;
 u_int spd;
 int len, plen, hlen, pcnt, offset;
 int s;
 caddr_t buf;
 int resCount;

 if (&sc->arrq == dbch) {
  off = OHCI_ARQOFF;
 } else if (&sc->arrs == dbch) {
  off = OHCI_ARSOFF;
 } else {
  return;
 }

 s = splfw();
 db_tr = dbch->top;
 pcnt = 0;

 fwdma_sync_multiseg_all(dbch->am, BUS_DMASYNC_POSTREAD);
 fwdma_sync_multiseg_all(dbch->am, BUS_DMASYNC_POSTWRITE);
 status = FWOHCI_DMA_READ(db_tr->db[0].db.desc.res) >> OHCI_STATUS_SHIFT;
 resCount = FWOHCI_DMA_READ(db_tr->db[0].db.desc.res) & OHCI_COUNT_MASK;
 while (status & OHCI_CNTL_DMA_ACTIVE) {






  len = dbch->xferq.psize - resCount;
  ld = (uint8_t *)db_tr->buf;
  if (dbch->pdb_tr == ((void*)0)) {
   len -= dbch->buf_offset;
   ld += dbch->buf_offset;
  }
  if (len > 0)
   bus_dmamap_sync(dbch->dmat, db_tr->dma_map,
     BUS_DMASYNC_POSTREAD);
  while (len > 0) {
   if (count >= 0 && count-- == 0)
    goto out;
   if (dbch->pdb_tr != ((void*)0)) {

    int rlen;

    offset = dbch->buf_offset;
    if (offset < 0)
     offset = - offset;
    buf = dbch->pdb_tr->buf + offset;
    rlen = dbch->xferq.psize - offset;
    if (firewire_debug)
     printf("rlen=%d, offset=%d\n",
      rlen, dbch->buf_offset);
    if (dbch->buf_offset < 0) {

     char *p;

     p = (char *)&pktbuf;
     bcopy(buf, p, rlen);
     p += rlen;

     rlen = sizeof(pktbuf) - rlen;
     if (rlen < 0)
      printf("why rlen < 0\n");
     bcopy(db_tr->buf, p, rlen);
     ld += rlen;
     len -= rlen;
     hlen = fwohci_arcv_swap(&pktbuf, sizeof(pktbuf));
     if (hlen <= 0) {
      printf("hlen should be positive.");
      goto err;
     }
     offset = sizeof(pktbuf);
     vec[0].iov_base = (char *)&pktbuf;
     vec[0].iov_len = offset;
    } else {

     offset = rlen;
     vec[0].iov_base = buf;
     vec[0].iov_len = rlen;
    }
    fp=(struct fw_pkt *)vec[0].iov_base;
    nvec = 1;
   } else {

    fp=(struct fw_pkt *)ld;
    hlen = fwohci_arcv_swap(fp, len);
    if (hlen == 0)
     goto err;
    if (hlen < 0) {
     dbch->pdb_tr = db_tr;
     dbch->buf_offset = - dbch->buf_offset;

     if (resCount != 0) {
      printf("resCount=%d hlen=%d\n",
          resCount, hlen);
          goto err;
     }
     goto out;
    }
    offset = 0;
    nvec = 0;
   }
   plen = fwohci_get_plen(sc, dbch, fp) - offset;
   if (plen < 0) {


    printf("plen(%d) is negative! offset=%d\n",
        plen, offset);
    goto err;
   }
   if (plen > 0) {
    len -= plen;
    if (len < 0) {
     dbch->pdb_tr = db_tr;
     if (firewire_debug)
      printf("splitted payload\n");

     if (resCount != 0) {
      printf("resCount=%d plen=%d"
          " len=%d\n",
          resCount, plen, len);
      goto err;
     }
     goto out;
    }
    vec[nvec].iov_base = ld;
    vec[nvec].iov_len = plen;
    nvec++;
    ld += plen;
   }
   dbch->buf_offset = ld - (uint8_t *)db_tr->buf;
   if (nvec == 0)
    printf("nvec == 0\n");


   stat = FWOHCI_DMA_READ(*(uint32_t *)(ld - sizeof(struct fwohci_trailer)));




   spd = (stat >> 21) & 0x3;
   event = (stat >> 16) & 0x1f;
   switch (event) {
   case 129:




   case 130:
   {
    struct fw_rcv_buf rb;

    if ((vec[nvec-1].iov_len -=
     sizeof(struct fwohci_trailer)) == 0)
     nvec--;
    rb.fc = &sc->fc;
    rb.vec = vec;
    rb.nvec = nvec;
    rb.spd = spd;
    fw_rcv(&rb);
    break;
   }
   case 128:
    if ((sc->fc.status != FWBUSRESET) &&
        (sc->fc.status != FWBUSINIT))
     printf("got BUSRST packet!?\n");
    break;
   default:
    device_printf(sc->fc.dev,
        "Async DMA Receive error err=%02x %s"
        " plen=%d offset=%d len=%d status=0x%08x"
        " tcode=0x%x, stat=0x%08x\n",
        event, fwohcicode[event], plen,
        dbch->buf_offset, len,
        OREAD(sc, OHCI_DMACTL(off)),
        fp->mode.common.tcode, stat);

    goto err;

    break;
   }
   pcnt++;
   if (dbch->pdb_tr != ((void*)0)) {
    fwohci_arcv_free_buf(sc, dbch, dbch->pdb_tr,
        off, 1);
    dbch->pdb_tr = ((void*)0);
   }

  }
out:
  if (resCount == 0) {

   if (dbch->pdb_tr == ((void*)0)) {
    fwohci_arcv_free_buf(sc, dbch, db_tr, off, 1);
    dbch->buf_offset = 0;
   } else
    if (dbch->pdb_tr != db_tr)
     printf("pdb_tr != db_tr\n");
   db_tr = STAILQ_NEXT(db_tr, link);
   status = FWOHCI_DMA_READ(db_tr->db[0].db.desc.res)
      >> OHCI_STATUS_SHIFT;
   resCount = FWOHCI_DMA_READ(db_tr->db[0].db.desc.res)
      & OHCI_COUNT_MASK;

   dbch->top = db_tr;
  } else {
   dbch->buf_offset = dbch->xferq.psize - resCount;
   break;
  }

 }




 splx(s);
 return;

err:
 device_printf(sc->fc.dev, "AR DMA status=%x, ",
     OREAD(sc, OHCI_DMACTL(off)));
 dbch->pdb_tr = ((void*)0);

 printf(" skip buffer");
 while (resCount == 0) {
  printf(" #");
  fwohci_arcv_free_buf(sc, dbch, db_tr, off, 0);
  db_tr = STAILQ_NEXT(db_tr, link);
  resCount = FWOHCI_DMA_READ(db_tr->db[0].db.desc.res)
      & OHCI_COUNT_MASK;
 }
 printf(" done\n");
 dbch->top = db_tr;
 dbch->buf_offset = dbch->xferq.psize - resCount;
 OWRITE(sc, OHCI_DMACTL(off), OHCI_CNTL_DMA_WAKE);
 splx(s);
}
