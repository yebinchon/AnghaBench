
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ena_ring {int first_interrupt; scalar_t__ no_interrupt_event_cnt; int ena_dev; struct ena_adapter* adapter; int qid; } ;
struct ena_adapter {int ena_dev; } ;



__attribute__((used)) static void
ena_init_io_rings_common(struct ena_adapter *adapter, struct ena_ring *ring,
    uint16_t qid)
{

 ring->qid = qid;
 ring->adapter = adapter;
 ring->ena_dev = adapter->ena_dev;
 ring->first_interrupt = 0;
 ring->no_interrupt_event_cnt = 0;
}
