
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ off_t ;
struct TYPE_3__ {scalar_t__ ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int bcopy (void*,void*,scalar_t__) ;
 scalar_t__ omin (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
mdcopyfrom_vlist(bus_dma_segment_t *vlist, off_t offset, void *dst, off_t len)
{
 off_t seg_len;

 while (offset >= vlist->ds_len) {
  offset -= vlist->ds_len;
  vlist++;
 }

 while (len != 0) {
  seg_len = omin(len, vlist->ds_len - offset);
  bcopy((void *)(uintptr_t)(vlist->ds_addr + offset), dst,
      seg_len);
  offset = 0;
  dst = (uint8_t *)dst + seg_len;
  len -= seg_len;
  vlist++;
 }
}
