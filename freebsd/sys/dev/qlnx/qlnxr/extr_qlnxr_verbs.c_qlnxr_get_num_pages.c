
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ib_phys_buf {scalar_t__ size; } ;
typedef int qlnx_host_t ;


 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static size_t
qlnxr_get_num_pages(qlnx_host_t *ha, struct ib_phys_buf *buf_list,
 int buf_cnt)
{
 int i;
 size_t num_pages = 0;
 u64 size;

 for (i = 0; i < buf_cnt; i++) {

  size = 0;
  while (size < buf_list->size) {
   size += PAGE_SIZE;
   num_pages++;
  }
  buf_list++;
 }
 return (num_pages);
}
