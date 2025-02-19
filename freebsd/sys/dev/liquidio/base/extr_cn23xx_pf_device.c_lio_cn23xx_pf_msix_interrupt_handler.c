
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct octeon_device {int pf_num; struct lio_droq** droq; } ;
struct lio_ioq_vector {size_t droq_index; int ioq_num; struct octeon_device* oct_dev; } ;
struct lio_droq {int pkts_sent_reg; } ;


 int LIO_CN23XX_INTR_PI_INT ;
 int LIO_CN23XX_INTR_PO_INT ;
 int LIO_MSIX_PI_INT ;
 int LIO_MSIX_PO_INT ;
 int lio_dev_err (struct octeon_device*,char*,int ,int ) ;
 int lio_read_csr64 (struct octeon_device*,int ) ;

__attribute__((used)) static uint64_t
lio_cn23xx_pf_msix_interrupt_handler(void *dev)
{
 struct lio_ioq_vector *ioq_vector = (struct lio_ioq_vector *)dev;
 struct octeon_device *oct = ioq_vector->oct_dev;
 struct lio_droq *droq = oct->droq[ioq_vector->droq_index];
 uint64_t pkts_sent;
 uint64_t ret = 0;

 if (droq == ((void*)0)) {
  lio_dev_err(oct, "23XX bringup FIXME: oct pfnum:%d ioq_vector->ioq_num :%d droq is NULL\n",
       oct->pf_num, ioq_vector->ioq_num);
  return (0);
 }
 pkts_sent = lio_read_csr64(oct, droq->pkts_sent_reg);






 if (!pkts_sent || (pkts_sent == 0xFFFFFFFFFFFFFFFFULL))
  return (ret);


 if (pkts_sent & LIO_CN23XX_INTR_PO_INT)
  ret |= LIO_MSIX_PO_INT;

 if (pkts_sent & LIO_CN23XX_INTR_PI_INT)

  ret |= LIO_MSIX_PI_INT;





 return (ret);
}
