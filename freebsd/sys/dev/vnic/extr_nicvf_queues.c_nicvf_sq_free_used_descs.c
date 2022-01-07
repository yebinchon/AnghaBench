
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sq_hdr_subdesc {scalar_t__ subdesc_type; int subdesc_cnt; } ;
struct snd_queue {int head; struct snd_buff* snd_buff; int snd_buff_dmat; } ;
struct snd_buff {int * mbuf; int dmap; } ;
struct nicvf {int dummy; } ;


 scalar_t__ GET_SQ_DESC (struct snd_queue*,int) ;
 int NICVF_TX_LOCK (struct snd_queue*) ;
 int NICVF_TX_UNLOCK (struct snd_queue*) ;
 int NIC_QSET_SQ_0_7_HEAD ;
 scalar_t__ SQ_DESC_TYPE_HEADER ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;
 int nicvf_put_sq_desc (struct snd_queue*,int) ;
 int nicvf_queue_reg_read (struct nicvf*,int ,int) ;

__attribute__((used)) static void
nicvf_sq_free_used_descs(struct nicvf *nic, struct snd_queue *sq, int qidx)
{
 uint64_t head;
 struct snd_buff *snd_buff;
 struct sq_hdr_subdesc *hdr;

 NICVF_TX_LOCK(sq);
 head = nicvf_queue_reg_read(nic, NIC_QSET_SQ_0_7_HEAD, qidx) >> 4;
 while (sq->head != head) {
  hdr = (struct sq_hdr_subdesc *)GET_SQ_DESC(sq, sq->head);
  if (hdr->subdesc_type != SQ_DESC_TYPE_HEADER) {
   nicvf_put_sq_desc(sq, 1);
   continue;
  }
  snd_buff = &sq->snd_buff[sq->head];
  if (snd_buff->mbuf != ((void*)0)) {
   bus_dmamap_unload(sq->snd_buff_dmat, snd_buff->dmap);
   m_freem(snd_buff->mbuf);
   sq->snd_buff[sq->head].mbuf = ((void*)0);
  }
  nicvf_put_sq_desc(sq, hdr->subdesc_cnt + 1);
 }
 NICVF_TX_UNLOCK(sq);
}
