
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int status_error_len; } ;
struct TYPE_8__ {TYPE_3__ qword1; } ;
union i40e_rx_desc {TYPE_4__ wb; } ;
typedef int uint32_t ;
typedef size_t uint16_t ;
typedef int u64 ;
struct rx_ring {union i40e_rx_desc* rx_base; } ;
struct ixl_vsi {TYPE_2__* shared; TYPE_1__* rx_queues; } ;
typedef int qidx_t ;
struct TYPE_6__ {int* isc_nrxd; } ;
struct TYPE_5__ {struct rx_ring rxr; } ;


 int I40E_RXD_QW1_STATUS_MASK ;
 int I40E_RXD_QW1_STATUS_SHIFT ;
 int I40E_RX_DESC_STATUS_DD_SHIFT ;
 int I40E_RX_DESC_STATUS_EOF_SHIFT ;
 int le64toh (int ) ;

__attribute__((used)) static int
ixl_isc_rxd_available(void *arg, uint16_t rxqid, qidx_t idx, qidx_t budget)
{
 struct ixl_vsi *vsi = arg;
 struct rx_ring *rxr = &vsi->rx_queues[rxqid].rxr;
 union i40e_rx_desc *rxd;
 u64 qword;
 uint32_t status;
 int cnt, i, nrxd;

 nrxd = vsi->shared->isc_nrxd[0];

 for (cnt = 0, i = idx; cnt < nrxd - 1 && cnt <= budget;) {
  rxd = &rxr->rx_base[i];
  qword = le64toh(rxd->wb.qword1.status_error_len);
  status = (qword & I40E_RXD_QW1_STATUS_MASK)
   >> I40E_RXD_QW1_STATUS_SHIFT;

  if ((status & (1 << I40E_RX_DESC_STATUS_DD_SHIFT)) == 0)
   break;
  if (++i == nrxd)
   i = 0;
  if (status & (1 << I40E_RX_DESC_STATUS_EOF_SHIFT))
   cnt++;
 }

 return (cnt);
}
