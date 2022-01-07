
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_vec {int num; int ntb; } ;


 int amd_ntb_interrupt (int ,int ) ;

__attribute__((used)) static void
amd_ntb_vec_isr(void *arg)
{
 struct amd_ntb_vec *nvec = arg;

 amd_ntb_interrupt(nvec->ntb, nvec->num);
}
