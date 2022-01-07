
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_5__ {int nr_segments; TYPE_1__* seg; } ;
typedef TYPE_2__ blkif_request_t ;
struct TYPE_4__ {scalar_t__ first_sect; scalar_t__ last_sect; } ;



__attribute__((used)) static __inline int
xbb_count_sects(blkif_request_t *ring_req)
{
 int i;
 int cur_size = 0;

 for (i = 0; i < ring_req->nr_segments; i++) {
  int nsect;

  nsect = (int8_t)(ring_req->seg[i].last_sect -
   ring_req->seg[i].first_sect + 1);
  if (nsect <= 0)
   break;

  cur_size += nsect;
 }

 return (cur_size);
}
