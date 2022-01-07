
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicpf {int dummy; } ;


 int nic_mbx_intr_handler (struct nicpf*,int) ;

__attribute__((used)) static void
nic_mbx1_intr_handler (void *arg)
{
 struct nicpf *nic = (struct nicpf *)arg;

 nic_mbx_intr_handler(nic, 1);
}
