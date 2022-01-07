
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_vec {int num; int ntb; } ;


 int intel_ntb_interrupt (int ,int ) ;

__attribute__((used)) static void
ndev_vec_isr(void *arg)
{
 struct ntb_vec *nvec = arg;

 intel_ntb_interrupt(nvec->ntb, nvec->num);
}
