
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef int vm_offset_t ;
struct TYPE_12__ {scalar_t__ elion; scalar_t__ bpid; scalar_t__ liodn; } ;
typedef TYPE_3__ t_DpaaFD ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; scalar_t__ m_data; } ;
struct dtsec_softc {int sc_tx_fqr_full; int sc_tx_fqr; TYPE_2__* sc_ifnet; TYPE_1__* sc_mii; } ;
struct dtsec_rm_frame_info {int * fi_sgt; struct mbuf* fi_mbuf; } ;
struct TYPE_11__ {int if_drv_flags; int if_snd; } ;
struct TYPE_10__ {int mii_media_status; } ;


 int DPAA_FD_SET_ADDR (TYPE_3__*,int *) ;
 int DPAA_FD_SET_FORMAT (TYPE_3__*,int ) ;
 int DPAA_FD_SET_LENGTH (TYPE_3__*,scalar_t__) ;
 int DPAA_FD_SET_OFFSET (TYPE_3__*,int ) ;
 int DPAA_FD_SET_STATUS (TYPE_3__*,int ) ;
 unsigned int DPAA_NUM_OF_SG_TABLE_ENTRY ;
 int DPAA_SGTE_SET_ADDR (int *,void*) ;
 int DPAA_SGTE_SET_BPID (int *,int ) ;
 int DPAA_SGTE_SET_EXTENSION (int *,int ) ;
 int DPAA_SGTE_SET_FINAL (int *,int) ;
 int DPAA_SGTE_SET_LENGTH (int *,scalar_t__) ;
 int DPAA_SGTE_SET_OFFSET (int *,int ) ;
 int DTSEC_LOCK (struct dtsec_softc*) ;
 int DTSEC_LOCK_ASSERT (struct dtsec_softc*) ;
 unsigned int DTSEC_MAX_TX_QUEUE_LEN ;
 int DTSEC_UNLOCK (struct dtsec_softc*) ;
 scalar_t__ E_OK ;
 int IFF_DRV_RUNNING ;
 int IFM_ACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 struct dtsec_rm_frame_info* dtsec_rm_fi_alloc (struct dtsec_softc*) ;
 int dtsec_rm_fi_free (struct dtsec_softc*,struct dtsec_rm_frame_info*) ;
 int e_DPAA_FD_FORMAT_TYPE_SHORT_MBSF ;
 int e_QM_FQR_COUNTERS_FRAME ;
 int m_freem (struct mbuf*) ;
 scalar_t__ qman_fqr_enqueue (int ,int ,TYPE_3__*) ;
 unsigned int qman_fqr_get_counter (int ,int ,int ) ;

void
dtsec_rm_if_start_locked(struct dtsec_softc *sc)
{
 vm_size_t dsize, psize, ssize;
 struct dtsec_rm_frame_info *fi;
 unsigned int qlen, i;
 struct mbuf *m0, *m;
 vm_offset_t vaddr;
 t_DpaaFD fd;

 DTSEC_LOCK_ASSERT(sc);


 if ((sc->sc_mii->mii_media_status & IFM_ACTIVE) == 0)
  return;

 if ((sc->sc_ifnet->if_drv_flags & IFF_DRV_RUNNING) != IFF_DRV_RUNNING)
  return;

 while (!IFQ_DRV_IS_EMPTY(&sc->sc_ifnet->if_snd)) {

  qlen = qman_fqr_get_counter(sc->sc_tx_fqr, 0,
      e_QM_FQR_COUNTERS_FRAME);

  if (qlen >= DTSEC_MAX_TX_QUEUE_LEN) {
   sc->sc_tx_fqr_full = 1;
   return;
  }

  fi = dtsec_rm_fi_alloc(sc);
  if (fi == ((void*)0))
   return;

  IFQ_DRV_DEQUEUE(&sc->sc_ifnet->if_snd, m0);
  if (m0 == ((void*)0)) {
   dtsec_rm_fi_free(sc, fi);
   return;
  }

  i = 0;
  m = m0;
  psize = 0;
  dsize = 0;
  fi->fi_mbuf = m0;
  while (m && i < DPAA_NUM_OF_SG_TABLE_ENTRY) {
   if (m->m_len == 0)
    continue;





   DPAA_SGTE_SET_ADDR(&fi->fi_sgt[i], (void *)fi);
   DPAA_SGTE_SET_LENGTH(&fi->fi_sgt[i], 0);

   DPAA_SGTE_SET_EXTENSION(&fi->fi_sgt[i], 0);
   DPAA_SGTE_SET_FINAL(&fi->fi_sgt[i], 0);
   DPAA_SGTE_SET_BPID(&fi->fi_sgt[i], 0);
   DPAA_SGTE_SET_OFFSET(&fi->fi_sgt[i], 0);
   i++;

   dsize = m->m_len;
   vaddr = (vm_offset_t)m->m_data;
   while (dsize > 0 && i < DPAA_NUM_OF_SG_TABLE_ENTRY) {
    ssize = PAGE_SIZE - (vaddr & PAGE_MASK);
    if (m->m_len < ssize)
     ssize = m->m_len;

    DPAA_SGTE_SET_ADDR(&fi->fi_sgt[i],
        (void *)vaddr);
    DPAA_SGTE_SET_LENGTH(&fi->fi_sgt[i], ssize);

    DPAA_SGTE_SET_EXTENSION(&fi->fi_sgt[i], 0);
    DPAA_SGTE_SET_FINAL(&fi->fi_sgt[i], 0);
    DPAA_SGTE_SET_BPID(&fi->fi_sgt[i], 0);
    DPAA_SGTE_SET_OFFSET(&fi->fi_sgt[i], 0);

    dsize -= ssize;
    vaddr += ssize;
    psize += ssize;
    i++;
   }

   if (dsize > 0)
    break;

   m = m->m_next;
  }


  if (m != ((void*)0) || dsize != 0) {
   dtsec_rm_fi_free(sc, fi);
   m_freem(m0);
   continue;
  }

  DPAA_SGTE_SET_FINAL(&fi->fi_sgt[i-1], 1);

  DPAA_FD_SET_ADDR(&fd, fi->fi_sgt);
  DPAA_FD_SET_LENGTH(&fd, psize);
  DPAA_FD_SET_FORMAT(&fd, e_DPAA_FD_FORMAT_TYPE_SHORT_MBSF);

  fd.liodn = 0;
  fd.bpid = 0;
  fd.elion = 0;
  DPAA_FD_SET_OFFSET(&fd, 0);
  DPAA_FD_SET_STATUS(&fd, 0);

  DTSEC_UNLOCK(sc);
  if (qman_fqr_enqueue(sc->sc_tx_fqr, 0, &fd) != E_OK) {
   dtsec_rm_fi_free(sc, fi);
   m_freem(m0);
  }
  DTSEC_LOCK(sc);
 }
}
