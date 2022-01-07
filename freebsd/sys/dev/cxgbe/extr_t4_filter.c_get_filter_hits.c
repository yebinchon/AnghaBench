
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct adapter {int dummy; } ;


 int A_TP_CMM_TCB_BASE ;
 int TCB_SIZE ;
 int be32toh (int) ;
 int be64toh (int ) ;
 scalar_t__ is_t4 (struct adapter*) ;
 int read_via_memwin (struct adapter*,int ,int,int*,int) ;
 int t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static inline uint64_t
get_filter_hits(struct adapter *sc, uint32_t tid)
{
 uint32_t tcb_addr;

 tcb_addr = t4_read_reg(sc, A_TP_CMM_TCB_BASE) + tid * TCB_SIZE;

 if (is_t4(sc)) {
  uint64_t hits;

  read_via_memwin(sc, 0, tcb_addr + 16, (uint32_t *)&hits, 8);
  return (be64toh(hits));
 } else {
  uint32_t hits;

  read_via_memwin(sc, 0, tcb_addr + 24, &hits, 4);
  return (be32toh(hits));
 }
}
