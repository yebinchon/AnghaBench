
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ u64 ;
struct ib_phys_buf {scalar_t__ size; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT11 (int *,char*,struct ib_phys_buf*,int) ;

__attribute__((used)) static int
qlnxr_validate_phys_buf_list(qlnx_host_t *ha, struct ib_phys_buf *buf_list,
 int buf_cnt, uint64_t *total_size)
{
 u64 size = 0;

 *total_size = 0;

 if (!buf_cnt || buf_list == ((void*)0)) {
  QL_DPRINT11(ha,
   "failed buf_list = %p buf_cnt = %d\n", buf_list, buf_cnt);
  return (-1);
 }

 size = buf_list->size;

 if (!size) {
  QL_DPRINT11(ha,
   "failed buf_list = %p buf_cnt = %d"
   " buf_list->size = 0\n", buf_list, buf_cnt);
  return (-1);
 }

 while (buf_cnt) {

  *total_size += buf_list->size;

  if (buf_list->size != size) {
   QL_DPRINT11(ha,
    "failed buf_list = %p buf_cnt = %d"
    " all buffers should have same size\n",
    buf_list, buf_cnt);
   return (-1);
  }

  buf_list++;
  buf_cnt--;
 }
 return (0);
}
