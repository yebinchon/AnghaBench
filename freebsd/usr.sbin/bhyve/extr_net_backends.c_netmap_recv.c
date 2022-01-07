
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct netmap_slot {int flags; int len; int buf_idx; } ;
struct netmap_ring {scalar_t__ head; scalar_t__ tail; scalar_t__ cur; struct netmap_slot* slot; } ;
struct netmap_priv {struct netmap_ring* rx; } ;
struct net_backend {scalar_t__ opaque; } ;
struct iovec {int iov_len; void* iov_base; } ;
typedef int ssize_t ;


 int ENOSPC ;
 void* NETMAP_BUF (struct netmap_ring*,int ) ;
 int NS_MOREFRAG ;
 int WPRINTF (char*) ;
 int assert (int) ;
 int memcpy (void*,void*,int) ;
 scalar_t__ nm_ring_next (struct netmap_ring*,scalar_t__) ;

__attribute__((used)) static ssize_t
netmap_recv(struct net_backend *be, struct iovec *iov, int iovcnt)
{
 struct netmap_priv *priv = (struct netmap_priv *)be->opaque;
 struct netmap_slot *slot = ((void*)0);
 struct netmap_ring *ring;
 void *iov_frag_buf;
 int iov_frag_size;
 ssize_t totlen = 0;
 uint32_t head;

 assert(iovcnt);

 ring = priv->rx;
 head = ring->head;
 iov_frag_buf = iov->iov_base;
 iov_frag_size = iov->iov_len;

 do {
  int nm_buf_len;
  void *nm_buf;

  if (head == ring->tail) {
   return (0);
  }

  slot = ring->slot + head;
  nm_buf = NETMAP_BUF(ring, slot->buf_idx);
  nm_buf_len = slot->len;

  for (;;) {
   int copylen = nm_buf_len < iov_frag_size ?
       nm_buf_len : iov_frag_size;

   memcpy(iov_frag_buf, nm_buf, copylen);
   nm_buf += copylen;
   nm_buf_len -= copylen;
   iov_frag_buf += copylen;
   iov_frag_size -= copylen;
   totlen += copylen;

   if (nm_buf_len == 0) {
    break;
   }

   iov++;
   iovcnt--;
   if (iovcnt == 0) {

    WPRINTF(("Short iov, drop %zd bytes\n",
        totlen));
    return (-ENOSPC);
   }
   iov_frag_buf = iov->iov_base;
   iov_frag_size = iov->iov_len;
  }

  head = nm_ring_next(ring, head);

 } while (slot->flags & NS_MOREFRAG);


 ring->head = ring->cur = head;

 return (totlen);
}
