
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {struct ib_device* ib_device; } ;
struct sdp_buf {int * mapping; struct mbuf* mb; } ;
struct mbuf {int m_len; struct mbuf* m_next; } ;
struct ib_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int ib_dma_unmap_single (struct ib_device*,int ,int ,int) ;

__attribute__((used)) static inline void
sdp_cleanup_sdp_buf(struct sdp_sock *ssk, struct sdp_buf *sbuf,
    enum dma_data_direction dir)
{
 struct ib_device *dev;
 struct mbuf *mb;
 int i;

 dev = ssk->ib_device;
 for (i = 0, mb = sbuf->mb; mb != ((void*)0); mb = mb->m_next, i++)
  ib_dma_unmap_single(dev, sbuf->mapping[i], mb->m_len, dir);
}
