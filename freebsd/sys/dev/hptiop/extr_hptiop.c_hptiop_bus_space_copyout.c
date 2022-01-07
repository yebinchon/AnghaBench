
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct hpt_iop_hba {int bar0h; int bar0t; } ;


 unsigned char bus_space_read_1 (int ,int ,scalar_t__) ;
 scalar_t__ copyout (unsigned char*,int *,int) ;

__attribute__((used)) static int hptiop_bus_space_copyout(struct hpt_iop_hba *hba, u_int32_t bus,
         void *user, int size)
{
 unsigned char byte;
 int i;

 for (i=0; i<size; i++) {
  byte = bus_space_read_1(hba->bar0t, hba->bar0h, bus + i);
  if (copyout(&byte, (u_int8_t *)user + i, 1))
   return -1;
 }

 return 0;
}
