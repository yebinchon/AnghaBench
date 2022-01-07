
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lio_droq {scalar_t__ max_empty_descs; scalar_t__ max_count; scalar_t__ buffer_size; } ;



__attribute__((used)) static void
lio_droq_compute_max_packet_bufs(struct lio_droq *droq)
{
 uint32_t count = 0;







 droq->max_empty_descs = 0;

 do {
  droq->max_empty_descs++;
  count += droq->buffer_size;
 } while (count < (64 * 1024));

 droq->max_empty_descs = droq->max_count - droq->max_empty_descs;
}
