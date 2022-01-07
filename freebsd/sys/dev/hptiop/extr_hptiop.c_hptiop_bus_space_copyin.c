
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct hpt_iop_hba {int bar0h; int bar0t; } ;


 int bus_space_write_1 (int ,int ,scalar_t__,unsigned char) ;
 scalar_t__ copyin (int *,unsigned char*,int) ;

__attribute__((used)) static int hptiop_bus_space_copyin(struct hpt_iop_hba *hba, u_int32_t bus,
         void *user, int size)
{
 unsigned char byte;
 int i;

 for (i=0; i<size; i++) {
  if (copyin((u_int8_t *)user + i, &byte, 1))
   return -1;
  bus_space_write_1(hba->bar0t, hba->bar0h, bus + i, byte);
 }

 return 0;
}
