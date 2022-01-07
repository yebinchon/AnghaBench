
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int register_t ;


 int ASI_DTLB_DATA_ACCESS_REG ;
 int TLB_DAR_SLOT (int ,int ) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int ldxa (int ,int ) ;

__attribute__((used)) static inline u_long
dtlb_get_data(u_int tlb, u_int slot)
{
 u_long data;
 register_t s;

 slot = TLB_DAR_SLOT(tlb, slot);




 s = intr_disable();
 (void)ldxa(slot, ASI_DTLB_DATA_ACCESS_REG);
 data = ldxa(slot, ASI_DTLB_DATA_ACCESS_REG);
 intr_restore(s);
 return (data);
}
