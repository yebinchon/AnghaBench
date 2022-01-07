
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iser_conn {int num_rx_descs; scalar_t__ login_resp_buf; void* rx_descs; } ;



__attribute__((used)) static inline bool
is_iser_tx_desc(struct iser_conn *iser_conn, void *wr_id)
{
 void *start = iser_conn->rx_descs;
 u64 len = iser_conn->num_rx_descs * sizeof(*iser_conn->rx_descs);
 void *end = (void *)((uintptr_t)start + (uintptr_t)len);

 if (start) {
  if (wr_id >= start && wr_id < end)
   return 0;
 } else {
  return ((uintptr_t)wr_id != (uintptr_t)iser_conn->login_resp_buf);
 }

 return 1;
}
