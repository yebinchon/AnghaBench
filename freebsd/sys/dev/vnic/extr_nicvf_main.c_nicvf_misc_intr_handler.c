
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nicvf {int dummy; } ;


 int NICVF_INTR_MBOX_MASK ;
 int NIC_VF_INT ;
 int nicvf_handle_mbx_intr (struct nicvf*) ;
 int nicvf_reg_read (struct nicvf*,int ) ;

__attribute__((used)) static void
nicvf_misc_intr_handler(void *arg)
{
 struct nicvf *nic = (struct nicvf *)arg;
 uint64_t intr;

 intr = nicvf_reg_read(nic, NIC_VF_INT);

 if (!(intr & NICVF_INTR_MBOX_MASK))
  return;

 nicvf_handle_mbx_intr(nic);
}
