
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct regpair {void* hi; void* lo; } ;
struct qlnxr_pbl_info {int num_pbes; int pbl_size; scalar_t__ two_layered; } ;
struct qlnxr_pbl {scalar_t__ va; } ;
struct qlnxr_dev {int * ha; } ;
struct ib_phys_buf {int size; int addr; } ;
typedef int qlnx_host_t ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int QL_DPRINT11 (int *,char*) ;
 int QL_DPRINT12 (int *,char*,...) ;
 void* cpu_to_le32 (int ) ;

__attribute__((used)) static void
qlnxr_populate_phys_mem_pbls(struct qlnxr_dev *dev,
 struct ib_phys_buf *buf_list, int buf_cnt,
 struct qlnxr_pbl *pbl, struct qlnxr_pbl_info *pbl_info)
{
 struct regpair *pbe;
 struct qlnxr_pbl *pbl_tbl;
 int pg_cnt, pages, pbe_cnt, total_num_pbes = 0;
 qlnx_host_t *ha;
        int i;
 u64 pbe_addr;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if (!pbl_info) {
  QL_DPRINT11(ha, "PBL_INFO not initialized\n");
  return;
 }

 if (!pbl_info->num_pbes) {
  QL_DPRINT11(ha, "pbl_info->num_pbes == 0\n");
  return;
 }




 if (pbl_info->two_layered)
  pbl_tbl = &pbl[1];
 else
  pbl_tbl = pbl;

 pbe = (struct regpair *)pbl_tbl->va;
 if (!pbe) {
  QL_DPRINT12(ha, "pbe is NULL\n");
  return;
 }

 pbe_cnt = 0;

 for (i = 0; i < buf_cnt; i++) {

  pages = buf_list->size >> PAGE_SHIFT;

  for (pg_cnt = 0; pg_cnt < pages; pg_cnt++) {


   pbe_addr = buf_list->addr + (PAGE_SIZE * pg_cnt);

   pbe->lo = cpu_to_le32((u32)pbe_addr);
   pbe->hi = cpu_to_le32(((u32)(pbe_addr >> 32)));

   QL_DPRINT12(ha, "Populate pbl table:"
    " pbe->addr=0x%x:0x%x "
    " pbe_cnt = %d total_num_pbes=%d"
    " pbe=%p\n", pbe->lo, pbe->hi, pbe_cnt,
    total_num_pbes, pbe);

   pbe_cnt ++;
   total_num_pbes ++;
   pbe++;

   if (total_num_pbes == pbl_info->num_pbes)
    return;




   if (pbe_cnt == (pbl_info->pbl_size / sizeof(u64))) {
    pbl_tbl++;
    pbe = (struct regpair *)pbl_tbl->va;
    pbe_cnt = 0;
   }
  }
  buf_list++;
 }
 QL_DPRINT12(ha, "exit\n");
 return;
}
