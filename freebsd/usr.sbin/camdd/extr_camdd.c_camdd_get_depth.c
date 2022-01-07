
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct camdd_dev {int cur_active_io; int num_run_queue; scalar_t__ num_peer_work_queue; scalar_t__ num_peer_done_queue; int blocksize; int peer_bytes_queued; } ;



void
camdd_get_depth(struct camdd_dev *dev, uint32_t *our_depth,
  uint32_t *peer_depth, uint32_t *our_bytes, uint32_t *peer_bytes)
{
 *our_depth = dev->cur_active_io + dev->num_run_queue;
 if (dev->num_peer_work_queue >
     dev->num_peer_done_queue)
  *peer_depth = dev->num_peer_work_queue -
         dev->num_peer_done_queue;
 else
  *peer_depth = 0;
 *our_bytes = *our_depth * dev->blocksize;
 *peer_bytes = dev->peer_bytes_queued;
}
