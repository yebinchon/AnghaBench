
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_droq {int pkts_pending; scalar_t__ pkt_count; int pkts_sent_reg; struct octeon_device* oct_dev; } ;


 int atomic_add_int (int *,scalar_t__) ;
 scalar_t__ lio_read_csr32 (struct octeon_device*,int ) ;

uint32_t
lio_droq_check_hw_for_pkts(struct lio_droq *droq)
{
 struct octeon_device *oct = droq->oct_dev;
 uint32_t last_count;
 uint32_t pkt_count = 0;

 pkt_count = lio_read_csr32(oct, droq->pkts_sent_reg);

 last_count = pkt_count - droq->pkt_count;
 droq->pkt_count = pkt_count;


 if (last_count)
  atomic_add_int(&droq->pkts_pending, last_count);

 return (last_count);
}
