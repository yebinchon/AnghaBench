
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wtap_medium {scalar_t__ open; int md_mtx; TYPE_1__* tx_handler; int md_pktbuf; } ;
struct packet {int id; struct mbuf* m; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int proc; int tq; } ;


 int DWTAP_PRINTF (char*,int,struct mbuf*) ;
 int M_NOWAIT ;
 int M_WTAP_PACKET ;
 int M_ZERO ;
 int STAILQ_INSERT_TAIL (int *,struct packet*,int ) ;
 int m_free (struct mbuf*) ;
 scalar_t__ malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pf_list ;
 int taskqueue_enqueue (int ,int *) ;

int
medium_transmit(struct wtap_medium *md, int id, struct mbuf*m)
{

 mtx_lock(&md->md_mtx);
 if (md->open == 0){
  DWTAP_PRINTF("[%d] dropping m=%p\n", id, m);
  m_free(m);
  mtx_unlock(&md->md_mtx);
  return 0;
 }

 DWTAP_PRINTF("[%d] transmiting m=%p\n", id, m);
 struct packet *p = (struct packet *)malloc(sizeof(struct packet),
     M_WTAP_PACKET, M_ZERO | M_NOWAIT);
 p->id = id;
 p->m = m;

 STAILQ_INSERT_TAIL(&md->md_pktbuf, p, pf_list);
 taskqueue_enqueue(md->tx_handler->tq, &md->tx_handler->proc);
 mtx_unlock(&md->md_mtx);

      return 0;
}
