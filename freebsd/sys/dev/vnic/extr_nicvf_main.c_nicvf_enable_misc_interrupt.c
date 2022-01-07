
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int dummy; } ;


 int ENXIO ;
 int NICVF_INTR_MBOX ;
 int nicvf_check_pf_ready (struct nicvf*) ;
 int nicvf_disable_intr (struct nicvf*,int ,int ) ;
 int nicvf_enable_intr (struct nicvf*,int ,int ) ;

__attribute__((used)) static int
nicvf_enable_misc_interrupt(struct nicvf *nic)
{


 nicvf_enable_intr(nic, NICVF_INTR_MBOX, 0);


 if (!nicvf_check_pf_ready(nic)) {
  nicvf_disable_intr(nic, NICVF_INTR_MBOX, 0);
  return (ENXIO);
 }

 return (0);
}
