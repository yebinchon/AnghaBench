
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int DBG_REG_INTR_BUFFER_RD_PTR ;
 int DBG_REG_INTR_BUFFER_WR_PTR ;
 int DBG_REG_WRAP_ON_INT_BUFFER ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int INT_BUF_NUM_OF_LINES ;
 int ecore_bus_dump_int_buf_range (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int,int) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;

__attribute__((used)) static u32 ecore_bus_dump_int_buf(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt,
          u32 *dump_buf,
          bool dump)
{
 u32 last_written_line, offset = 0;

 last_written_line = ecore_rd(p_hwfn, p_ptt, DBG_REG_INTR_BUFFER_WR_PTR);

 if (ecore_rd(p_hwfn, p_ptt, DBG_REG_WRAP_ON_INT_BUFFER)) {




  if (last_written_line < INT_BUF_NUM_OF_LINES - 1)
   offset += ecore_bus_dump_int_buf_range(p_hwfn, p_ptt, dump_buf + offset, dump, last_written_line + 1, INT_BUF_NUM_OF_LINES - 1);
  offset += ecore_bus_dump_int_buf_range(p_hwfn, p_ptt, dump_buf + offset, dump, 0, last_written_line);
 }
 else if (last_written_line) {




  if (!ecore_rd(p_hwfn, p_ptt, DBG_REG_INTR_BUFFER_RD_PTR))
   offset += ecore_bus_dump_int_buf_range(p_hwfn, p_ptt, dump_buf + offset, dump, 0, last_written_line);
  else
   DP_NOTICE(p_hwfn, 1, "Unexpected Debug Bus error: internal buffer read pointer is not zero\n");
 }

 return offset;
}
