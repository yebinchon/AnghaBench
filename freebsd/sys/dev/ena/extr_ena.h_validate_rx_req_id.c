
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int bad_req_id; } ;
struct ena_ring {scalar_t__ ring_size; TYPE_2__* adapter; TYPE_1__ rx_stats; } ;
struct TYPE_5__ {int reset_reason; int pdev; } ;


 int EFAULT ;
 int ENA_FLAG_ISSET (int ,TYPE_2__*) ;
 int ENA_FLAG_SET_ATOMIC (int ,TYPE_2__*) ;
 int ENA_FLAG_TRIGGER_RESET ;
 int ENA_REGS_RESET_INV_RX_REQ_ID ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*,scalar_t__) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline int
validate_rx_req_id(struct ena_ring *rx_ring, uint16_t req_id)
{
 if (likely(req_id < rx_ring->ring_size))
  return (0);

 device_printf(rx_ring->adapter->pdev, "Invalid rx req_id: %hu\n",
     req_id);
 counter_u64_add(rx_ring->rx_stats.bad_req_id, 1);


 if (likely(!ENA_FLAG_ISSET(ENA_FLAG_TRIGGER_RESET, rx_ring->adapter))) {
  rx_ring->adapter->reset_reason = ENA_REGS_RESET_INV_RX_REQ_ID;
  ENA_FLAG_SET_ATOMIC(ENA_FLAG_TRIGGER_RESET, rx_ring->adapter);
 }

 return (EFAULT);
}
